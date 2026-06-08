#!/bin/bash


<< Disclaimer 

This is just for infotainment purpose

This is a here document being used as a multi-line comment.



#!/bin/bash
This is called the shebang.
It tells Linux to execute the script using the Bash shell.
<< Disclaimer

This is just for infotainment purpose
#Disclaimer
This is a here document being used as a multi-line comment.
Bash ignores everything between << Disclaimer and Disclaimer.

Equivalent to writing a comment block.

read -p "jethne mud ke kise dekha: " girl
read takes input from the user.
-p displays a prompt message.
User input is stored in the variable girl.

Example:

jethne mud ke kise dekha: daya bhabhi

Now:

girl="daya bhabhi"
read -p "jetha ka pyar %: " pyar
Takes another input from the user.
Stores it in variable pyar.

Example:

jetha ka pyar %: 100

Now:

pyar=100
First Condition
if [[ $girl == "daya bhabhi" ]];
then
    echo "Jetha is loyal"

Meaning:

Check whether the value of girl is exactly "daya bhabhi".

If true:

Jetha is loyal

is printed.

Example:

girl="daya bhabhi"

Output:

Jetha is loyal
Second Condition
elif [[ $pyar -ge 100 ]];
then
    echo "Jeth is loyal"

Meaning:

elif means else if.
This block executes only if the first condition was false.
-ge means greater than or equal to.

Example:

girl="babita ji"
pyar=100

Output:

Jeth is loyal
Else Block
else
    echo "Jeth not loyal"

This runs when:

girl is not "daya bhabhi"
AND pyar is less than 100

Example:

girl="babita ji"
pyar=50

Output:

Jeth not loyal
End of If Block
fi
Marks the end of the if-elif-else statement.
Flow Diagram
Start
  |
  v
Read girl
Read pyar
  |
  v
Is girl = "daya bhabhi"?
  |
 Yes ------------> Jetha is loyal
  |
 No
  |
  v
Is pyar >= 100?
  |
 Yes ------------> Jeth is loyal
  |
 No
  |
  v
Jeth not loyal
Example Runs
Case 1

Input:

girl = daya bhabhi
pyar = 20

Output:

Jetha is loyal
Case 2

Input:

girl = babita ji
pyar = 100

Output:

Jeth is loyal
Case 3

Input:

girl = babita ji
pyar = 50

Output:

Jeth not loyal
Interview Explanation

This script demonstrates an if-elif-else conditional statement in Bash. It accepts two user inputs (girl and pyar). First it checks a string condition using ==. If that fails, it checks a numeric condition using -ge. Depending on which condition matches, it prints the corresponding message. If none of the conditions are true, the else block executes.
Disclaimer


function is_loyal() {

read -p "$1ne mud ke kise dekha: " girl
read -p "$1 ka pyar  %: " pyar

if [[ $girl == "daya bhabhi"   ]];

then 
	echo "$1 is loyal"

elif [[ $pyar -ge 100 ]]; 

then
	echo "$1 is loyal"

else
	echo "$1 not loyal"
fi
}


is_loyal "pranit"
