pandoc src/title.txt src/*/*.md -f markdown -t epub -s -o output/infinite-monkeys.epub --table-of-contents --toc-depth=1
pandoc src/title.txt src/*/*.md -f markdown -t html -s -o output/infinite-monkeys.html --table-of-contents --toc-depth=1

if hash ebook-convert 2>/dev/null; then
  ebook-convert output/infinite-monkeys.epub output/infinite-monkeys.mobi
else
  echo "Could not find 'ebook-convert' command, skipping generation of .mobi format"
fi
