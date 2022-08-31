# Functions and File Operations

<p align="justify">
<strong>

## Functions

- Functions let us avoid code duplication in script.
- We can create a function to hold single copy of code which we can call from multiple places.
- The general syntax for a function is as follows:

```sh
    #Function Declaration
    function function_name()
        {
            # Statements
        }
    
    # Function Call
    function_name
```

- Functions must be defined at the top in a shell cript before they are called or else it raises an issue.

## Piping

- If Linux was a superhero it's superpower would be pipes.
- Pipes let us take the output of one program, and feed it to the input of another.
- We can create exceptionally sophisticated programs simply by piping commands together.
- Like almost everything else that works from the terminal, pipes also work in a script.
- Pipe is used to combine two or more commands, and in this, the output of one command acts as input to another command, and this command's output may act as input to the next command and so on. It can also be visualized as a temporary connection between two or more commands/ programs/ processes.
- Let's understand the concept of piping through an example:

```sh
#!/bin/env bash

files=`ls -1 | sort -r | head -3` # THis is a pipe where the ouput of one command goes to the input of the other
count=1

for file in $files
    do
        echo "$count - $file"
        ((count++))
    done
```

## File Operations

### Reading Files

- We can `read` a file into a script using the read command and redirection.

```sh
#!/biv/env bash

# this is a syntax to read  a text file

filename="$1"

while IFS='' read -r line
    do
        echo $line
    done < filename.ext
```

### Writing Files

- We can `write` into a text file into a script using the write command and redirection.

```sh
bash shell_script_file.sh > filename.txt
# Prints all the output of script file into a new text file with mentioned name and extension or clears the text file and than re-writes it.

bash shell_script_file.sh > filename.txt
# Prints all the output of script file into a text file with mentioned name and extension but from it's current ending.
```

### Checksum

- We can check the state and size of the file using `cksum` command.

```sh
cksum filename.ext
```

# Sleep and Process

## Sleep

- Some processes need to run intermittently.
- We can use the `sleep` command to have them go to sleep untill they are needed.
- Let's understand this through an example below:

```sh
#!/biv/env bash

delay=$1

if [ -z $delay ] # -z checks if the variable is empty ot not. If empty, return true, else return false.
    then
        echo "Feed delay"
    else
        while IFS='' read -r line
            do
                sleep $delay # delays the printing of each line in the file by the time mentioned in seconds as input
                echo $line
            done < read.txt
    fi
```

## Watching Process

- We can have our scripts watch other processes and message when they terminate.
- Let's test it out with an example below:

```sh
#!/bin/env bash

status=0
pid=$1

if [ -z $pid ]
    then
        echo "PID Needed!!"
    else
        echo "PID:$PID under monitoring."
        while[ $status -eq 0 ]
            do
                ps pid > /dev/null
                status=$?
            done
fi

echo "PID:$pid terminated."
```

# Interactive Scripts

## Getting Input from Users

- In order to make our script interactive, we need to be able to get input from the user.
- We can do this using `read` command.
- Let's understand this with an example below:

```sh
#!/bin/env bash

read -p "prompt sentence: " variable
echo "The input we got is $variable"
```

## Handling Bad Data

- Now after learning the basics of shell scripting, we are ready to understand handlin bad data let's understand this with an example below:

```sh
#!/bin/env bash

valid=0

while [ $valid -eq 0 ]
    do
        read -p "Enter your name and age: " name age
        if [[  (-z $name) || (-z $age) ]]
            then
                echo "Name or Age Missing Re-enter..."
                continue
        elif [[ ! $name =~ ^[A-Za-Z]+$ ]]
            then
                echo "Name contain in-valid character...Re-try"
                continue
        elif [[ ! $age =~ ^[0-9]+$ ]]
            then
                echo "Age can only contain digits/number... Re-try"
                continue
        fi
        valid=1
done

echo "Your name is $name and age is $age."
```

</strong>
</p>
