#!/bin/bash

# declaring of files counter
declare -i files_found="0"

# $1 - variable which declare where (path) searching will be done (works as a scanner - will find everything)
# $2 - variable which declare what file type seek in scanned path of $1
# $3 - variable which declare what text/code should be grepped from $1(path) and $2(list of files)

# cycle declaring where results saved in search_path variable
for search_path in $(find $1 | grep $2)
    do
        echo "Searching in $search_path:"
        # creating of checker for comparing need/got value       
        checker_value=$(cat $search_path -n | grep $3)
        # saving result of checker into separete variable
        checker_index=$(echo $?)
        # creating a name of output file
        output_txt=$(echo "searcher-result.txt")
        # if-state that compare exit-code of checker_index variable with needed exit-code - 0
        if [ $checker_index -eq "0" ] >> /dev/null 2>&1
        then
        echo "Code was found in $search_path:"
        # saving output into txt file
        echo "Code was found in $search_path:" >> $output_txt
        cat $search_path -n | grep $3
        # savig result of code into same txt file if it was found
        cat $search_path -n | grep $3 >> $output_txt
        # inserting new line into file
        echo >> $output_txt
        # report of path to file where results was saved and showing it in STDIN
        echo "Result saved in file $output_txt"
        # increasing counter value for +1
        files_found="$files_found+1"
        else
        # report that code wasn't found
        echo "No code found in $search_path"
        fi
        echo
    done

    echo "Files with code found: $files_found"
    # saving counter value into file
    echo "Files with code found: $files_found" >> $output_txt
    echo >> $output_txt
