tiddlywiki ../readonly --rendertiddler $:/core/save/all ../../index.html text/plain
echo "switching to wiki's root directory"
cd ../
echo "switching to master"
git checkout master
echo "this is the status before adding:"
git status
echo "on master, adding all with git add ."
git add .
echo "all added."
echo "this is the status AFTER adding:"
git status
echo "COMMITTING"
git commit -am "Saved on: `date`"
git push origin master
git checkout gh-pages
git merge master
git push origin gh-pages
git checkout master
rsync -avz index.html iani@larigot.avarts.ionio.gr:/Library/WebServer/Documents/users/iani/wikis/sudel-a.html
