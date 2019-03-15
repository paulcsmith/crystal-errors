require "colorize"

puts <<-ERROR
#{"Error: Undefined constant MyMispelledConstent".colorize.yellow.bold}

#{"src/my_app.cr:".colorize}

 #{"14 |".colorize.dim} #{"MyMispelledConstent.do_something".colorize.bold}
      #{"^------------------".colorize.green}

#{"Did you mean 'MyMispelledConstant'?".colorize}


ERROR
