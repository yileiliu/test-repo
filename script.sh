#!/bin/bash
touch numbers
for i in {1..400}
do
    echo "$i" >> numbers
    git add -A
    git commit --author="user1 <user1@email.com>" --date=format:relative:$((RANDOM%972)).days.ago  -am "Commit message number $i"
done

