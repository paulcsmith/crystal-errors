require "colorize"

puts <<-ERROR
#{"Error: no overload matches 'something' with type Int32.".colorize.yellow.bold}
#{"Showing last frame. Use --verbose for full trace.".colorize.dim}

In src/my_app.cr:

 #{"14 |".colorize.dim} #{"full_name(1)".colorize.bold}
      #{"^~~~~~~~~".colorize.green}

Overloads are:
 - full_name(name : String)
 - full_name(name : User)


ERROR
