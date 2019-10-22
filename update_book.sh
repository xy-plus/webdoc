rm -rf docs
gitbook build
mv _book docs
cd docs
rm update_book.sh
rm .gitignore
cd ..
git add .
git commit -m "update"
git push
