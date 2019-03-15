require "colorize"

puts <<-ERROR
#{"Error: undefined method 'coloriize' for String".colorize.yellow.bold}
#{"Showing last frame. Use --verbose for full trace.".colorize.dim}

In src/my_app.cr:

 #{"14 |".colorize.dim} #{"my_string.coloriize".colorize.bold}
      #{"^--------".colorize.green}


ERROR
