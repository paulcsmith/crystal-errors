require "colorize"

puts <<-ERROR
#{"Showing last frame. Use --verbose for full trace.".colorize.dim}

In #{"src/my_app.cr".colorize.underline}

 #{"14 |".colorize.dim} #{"full_name(1)".colorize.bold}
      #{"^~~~~~~~~".colorize.green}

#{"Error:".colorize.red.bold} no overload matches 'full_name' with type Int32.

Overloads are:
 - full_name(name : String)
 - full_name(name : User)


ERROR
