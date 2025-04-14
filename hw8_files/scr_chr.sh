input_file="clinvar_20250330.vcf"
output_file="fout1"
chromosome_insertion="1"
chromosome_deletion="2"

echo "Task 7" > "$output_file"

longest_insertion=$(awk -v chr="$chromosome_insertion" '
    $1 == chr && !/^#/ {
        ref_len = length($4);
	    alt_len = length($5);
	        if (alt_len > ref_len) {
			             insertion_len = alt_len - ref_len;
				                  print insertion_len, $0}
					  }' "$input_file" | sort -nr | head -n 1)

largest_deletion=$(awk -v chr="$chromosome_deletion" '
    $1 == chr && !/^#/ {
	 ref_len = length($4);
		alt_len = length($5);
		    if (ref_len > alt_len) {
			             deletion_len = ref_len - alt_len;
						print deletion_len, $0}
					}' "$input_file" | sort -nr | head -n 1)

{
echo "Longest insertion on chromosome $chromosome_insertion:"
echo "$longest_insertion"
echo ""
echo "Largest deletion on chromosome $chromosome_deletion:"
echo "$largest_deletion"
} >> "$output_file"
