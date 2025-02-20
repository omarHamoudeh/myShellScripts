for file in file1.txt file2.txt file3.txt file4.txt file5.txt file6.txt file7.txt file8.txt; do
    head -n $(( RANDOM % 10 + 1 )) /usr/share/dict/words > "$file"
done

