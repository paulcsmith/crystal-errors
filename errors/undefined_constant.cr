require "colorize"

puts <<-ERROR
#{"Error: Undefined constant MyMispelledConstent".colorize.yellow.bold} #{"(use --verbose for full trace)".colorize.dim}

In #{"src/my_app.cr:".colorize}

 #{"14 |".colorize.dim} #{"MyMispelledConstent.do_something".colorize}
      #{"^------------------".colorize.green}

#{"Did you mean 'MyMispelledConstant'?".colorize}


ERROR
