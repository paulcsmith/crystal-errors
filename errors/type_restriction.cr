require "colorize"

puts <<-ERROR
#{"Error: type must be String, not Int32".colorize.yellow.bold}
#{"Showing last frame. Use --verbose for full trace.".colorize.dim}

In #{"src/my_app.cr".colorize}

 #{"14 |".colorize.dim} #{"def name : String".colorize.bold}
          #{"^---".colorize.green}


ERROR
