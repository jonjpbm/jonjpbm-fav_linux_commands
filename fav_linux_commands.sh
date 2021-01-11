********General*********
//convert seconds from epoch to date timestamp
date -d @1381176731

//Useful date commands
date +%m%d%H%M
//Output: 03181706

//Example of using xargs. Use this kind of scenario quiote often.
echo -e "1383095013\n1383095012\n1383095012\n1383095012\n1383095013\n1383095013" | xargs -I {} date -d @{}

//Trims down extra spaces in a string down to just one space between individual strings
expand nn | sed 's/  */ /g'

//Print out 2 files side-by-side
pr -m -t one.txt two.txt

//Remove empty lines using sed
sed '/^$/d' myFile

//Concatenating every other line with the next
cat temp.txt | sed '$!N;s/\n/ /'           With a space between
cat temp.txt | sed '$!N;s/\n/\t/'          With a Tab between
cat temp.txt | sed '$!N;s/\n/   \t/'       With spaces and a tabs
cat temp.txt | sed '$!N;s/\n/\t\t/'        With 2 tabs

//do it to 3 lines
sed 'N; s/\n//; N; s/\n//' infile
sed '$!N;s/\n/ /; $!N;s/\n/ /'

//Remove new line w/ sed and make one single line
sed ':a;N;$!ba;s/\n/ /g' tt

//Simple one-line for loop to output numbers incremently
for i in $(seq 1 10);do echo $i;done

//Look at special characters
od -c






********vi*********
//Sort in VI
//The number indicates what column you want to sort by
:sort /.*\%1v/

//Consert text from upper to lower (vice vera)
:%s/.*/\U&/
%s/.*/\L&/

//converting tabs to spaces in vim
To insert space characters whenever the tab key is pressed, set the 'expandtab' option:
:set expandtab
then
After the 'expandtab' option is set, all the new tab characters entered will be changed to spaces. This will not affect the existing tab characters. To change all the existing tab characters to match the current tab settings, use:
:retab

//Change all uppercase to lowercase with vi?
:%s/.*/\L&/
Conversely, :%s/.*/\U&/ will change all the characters to uppercase.

//Delete empty lines in vi
//g will execute a command on lines which match a regex. The regex is 'blank line' and the command is
//d (delete)
:g/^$/d
