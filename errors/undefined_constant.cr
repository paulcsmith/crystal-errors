require "colorize"

puts <<-ERROR
#{"Error: Undefined constant MyMispelledConstent".colorize.yellow.bold}
#{"Showing last frame. Use --verbose for full trace.".colorize.dim}

In src/my_app.cr:

 #{"14 |".colorize.dim} #{"MyMispelledConstent.do_something".colorize.bold}
      #{"^------------------".colorize.green}

Did you mean 'MyMispelledConstant'?


ERROR
