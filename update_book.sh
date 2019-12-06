rm -rf docs
gitbook build
mv _book docs
python3 add_code_style.py
cd docs
rm update_book.sh
rm .gitignore
git add .
git commit -m "update web"
cd ..
git add .
git commit -m "update doc"
git push
