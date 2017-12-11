# make a list with the line count of each project in the current directory
# bash script.sh ~/line-count.txt
#
# 3129 ===> /Users/me/code/project1
# 1231 ===> /Users/me/code/project2
# 8878 ===> /Users/me/code/project3
# 5266 ===> /Users/me/code/project4
# 3080 ===> /Users/me/code/project5

results=$1
currentDirectory=$(pwd)

for entry in "$currentDirectory"/*
do
  cd $entry
  total=$(git ls-files | xargs wc -l | grep total | sed 's/total//g')
  if ! [ -z "$total" ] ; then
    echo "$total ===> $(pwd)" >> $results
  fi
  cd ..
done
