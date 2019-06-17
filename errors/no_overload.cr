require "colorize"

puts <<-ERROR
#{"Showing last frame. Use --verbose for full trace.".colorize.dim}

#{"Error: no overload matches 'something' with type Int32.".colorize.red.bold}

In #{"src/my_app.cr".underline}

 #{"14 |".colorize.dim} #{"full_name(1)"}
      #{"^~~~~~~~~".colorize.green}

Overloads are:
 - full_name(name : String)
 - full_name(name : User)


ERROR
