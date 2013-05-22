for file in *.avg.csv
do
  cat "$file"
  echo
done > total.csv