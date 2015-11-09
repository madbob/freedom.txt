This is just a proof-of-concept for a method to inject into your newly generated compressed archives a static file about software freedom, to raise awareness to your fellows. For more details about the idea, get a look [here](http://blog.madbob.org/delivering-awareness).

 * `tar` is a Bash function intended to replace the effective `tar` command when invoked by the command line
 * `freedom.txt` is the file that will be appended to your archives
 * `install.sh` is a script to dispose things around. Once you run it, execute `source ~/.bashrc` to get the customized `tar` command available

Notes:
 * `freedom.txt` have to use \r\n as newline marker, to be friendly with Windows systems (which users are the main target of the file itself)
 * the `tar` function do not works well when the -C option is used

Please pull-request implementations for other commands, suggestions and improvements.
