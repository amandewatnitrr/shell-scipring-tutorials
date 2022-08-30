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

## if-then-elif-else-fi

- ```sh
    if [ conditional ]
      then
          statements

      elif [ conditional ]
          statements

      else
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

- The `elif` is an abbreviation of else if.
- It allows us to check a different expression than the one used in the if.
- elif must come before the else which must be the last clause in the if statement.

```sh
  #!/bin/env bash
  name=$1
  psrd=$2
  access=$3
  _date=$(date)
  _time=$(time)
  _pwd=$(pwd)
  rights=$4

  if [ $psrd = "akd1301" ] &&  [ $access -ge 1 ]
      then
          echo "last updated by $name - $_date $_time $_pwd"
      
      elif [ $access -eq 0 ]
          then 
              echo "Please kindly get your username validated."

      else
          echo "Access denied to $name - $_date $_time . Check Password or Authourized Personal"
  fi
```

## Loops in Shell Scripting

- Loops give us the ability to execute the code repeateadly.
- We have 2 loop statements `while` and `for`.

### while loop

```sh
while [ conditional ]
  do
    statement

  done
```

- Let's understand this better through an example below:

```sh
i=1
n=$1

while [ $i -le $n ]
  do
    echo "$i "
    ((i++))
  done
```

### for loop

- The below code snippet is a general syntax for array traversal in shell scripts.

```sh
  #!/bin/env bash

  array=$@
  for e in $array
      
      do
          echo "$e "
  done
```

### break and continue

- `break` causes the current loop or program flow to be stopped adn executes the statement after the end of the current block by skipping the remaining part.
- `continue` causes the current loop or program flow to be skipped to next iteration without executing th code any further.
- Let's understand this with an example below:

```sh
# Example for break
#!/bin/env bash

array=$@

for e in $array
    do
        if [ $e = "Smruti" ]
            then
                continue
        fi

        if [ $e = "Harshit" ]
            then
                echo "$e dealing in bitcoins"
                break

        else
            echo "$e"

        fi
done
```

</strong>
</p>
