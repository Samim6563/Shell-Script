if [ $# -lt 1 ]; then
  echo "Usage: $0 <word_file> <file1> <file2> ..."
  exit 1
fi

word_file=$1
shift
files=$@
words=($(cat $word_file))
for word in "${words[@]}"; do
  echo "Occurrences of '$word':"
  for file in $files; do
    count=$(grep -o "$word" "$file" | wc -l)
    if [ $count -gt 0 ]; then
      echo "  $file: $count"
    fi
  done
done
