# Getting Started with Shell Scripting

<p align="justify">
<strong>

- In order to create files in Linux we have 2 commands:
  - `touch`
  - `cat`
- `touch filename.ext`
  - creates a file without any content in it.

  - ```bash
        >>touch filename.ext # creates a file of specified extension type without any content in it
        >>touch -a filename.ext # used to change or update the last access time of the file
        >>touch -c filename.ext # checks whether the file with given specification is created or not
    ```

- `cat filename.ext`
  - creates a file with content inside of it.
- `pwd`
  - this command is used to check which directory you are currently inside.

- Scripts don't have an extension, but for keeping it at the safe side let's have .sh extension for it.
- So, let's assume an example below:
  - First, I created a script a file "hello.sh".
  - I open it in `vscode` and wrote the command.
  - And than executed it.

```bash
    echo "A simple string." #input
    #A simple string #output
```

- Whenever we exeute our script while why we write `bash filename.sh`??
  - cause files by default don't have the execute permission.

- `chmod`
  - this command sets the permission of files or directories.
  - so, if we want to run a shell script file directly using it's name, we use chmod.
  - let's understandthis with an example below.

  - ```bash
        >>./hello.sh ##input
        >> Permission denied

        >>chmod 755 hello.sh
        >>./hello.sh
        >> #whatever is in the script file successfully gets executed.
    ```

- `shebang`
  - There's a problem with the script code we have been writing so far.
  - Our Script code is specifically written for the bash shell.
  - While Bash is incredibily popular, it is not the only shell around.
  - If anyone tries to run it on another shell the results are unpredictable.
  - We want our scripts to run as they were designed.
  - Every shell script should begin with the interpreter line colourfully known as the shebang.
  - This particular line specifically tells which command provessor should handle this script.
  - So, what we do is:
    - We add shebang at the first line of the script file.

    - ```bash
        #!/usr/bin/env bash
        # The above statement is a shebang that tells that this need to be execute on bash shell.
      ```

## Variables

- Varibales must begin with a letter or an underscore.
- Any character in the variable name except the first place can be a number.
- Variables in Shell Scripting are case sensitive.
- Usually all uppercase, but not mandatory.
- Example:

```bash
#!usr/bin/env bash

name="Aman"
age=17

echo "My name is  $name. My age is $age."
```

### Passing Parameters

- The user can give inputs from user in scripts via parameters.
- The Scripts recieve parameters, even if it doesn't use them.
- Bash passes in them via some special symbols.
- The first parameter, $0 is special in that it is the path and name of the executing script.
- Generally, we don't use parameters past $9s since the use of curly braces with parameters is only supported in newer versions of Bash Shell.
- Parameters make it possible to be interactive with the user.
- Let's understand with an example below:

- ```bash
    #test_file.sh
    >>>#!usr/bin/env bash
    >>>echo "Hello" $1
  ```

  ```sh
    #output
    >>>bash test_file.sh Aman
    >>>Hello Aman
  ```

- We have some in-built parameters as well like `$(date)` and `$(time)`.
- Example:

  ```sh [g1: bash]
  #test_file.sh
  >>>#!usr/bin/env bash
  >>>name=$1;
  >>>_date=$(date)
  >>>_time=$(time);
  >>>echo "last updated by $name - $_date $_time";
  ```
  
  ```sh [g2:output]
  #terminal
  >>> bash test_file.sh Aman
  >>> last updated by Aman - Day, Mon DD, YYYY H:MM:SS AM/PM
  ```

</strong>
</p>