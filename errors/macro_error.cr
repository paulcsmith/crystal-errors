require "colorize"

puts <<-ERROR
#{"Error: undefined method 'not_a_method' for String".colorize.yellow.bold}
#{"Showing last frame. Use --verbose for full trace.".colorize.dim}

Expanded macro from src/my_cool_macro.cr:

 #{"> 14 |".colorize.dim} "this is ok"
 #{"> 15 |".colorize.green} #{%("this is not ok".not_a_method).colorize.bold}

In src/my_app.cr:

 #{"> 16 |".colorize.green} #{"my_cool_macro".colorize.bold}


ERROR
