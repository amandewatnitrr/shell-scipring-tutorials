# Branching, Conditionals and Loops in Shell Scripting

<p align="justify">
<strong>

- Like all other programming languages we have conditional statements in shell scripting as well.
- let's first start with the most basic conditional `if`:

## Boolean Compares

- List of boolean compares:
  - -eq
  - -ne
  - -lt
  - -gt
  - -le
  - -ge

- Meaning of Boolean Compares:
  - -eq: equal to
  - -ne: not equal to
  - -lt: less than
  - -gt: greater than
  - -le: less than or equal to
  - -ge: greater than or equal to

## if-then-else-fi

- ```sh
    if [conditional]
    then
        statements
    fi
  ```

- This is the basic structur of an if statement in script.
- Lets understand this with a simple example:

- ```sh
    #!/bin/env bash
    name=$1
    psrd=$2
    access=$3
    _date=$(date)
    _time=$(time)
    _pwd=$(pwd)

    if [ $psrd = "akd1301" ] &&  [ $access -ge 1 ]
        then
            echo "last updated by $name - $_date $_time $_pwd"
        else
            echo "Access denied to $name - $_date $_time . Check Password or Authourized Personal"
    fi
  ```

- On execution, if the psrd parameter doesn't match the desired value the staement enclosed within `then` and `fi` doesnot get executed.
- If is a test to see `if` an expression is `true`. If it is true than the commands between `then` and `fi` are executed. If false, the command between `else` and `fi` is executed.
- fi here as no deep meaning in such, fi just denotes the end of the if statement.

</strong>
</p>
