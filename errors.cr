require "colorize"

puts <<-ERROR
#{"-- Undefined constant #{"MyMispelledConstent".colorize.bold}" --------------------------

In #{"src/my_app.cr".colorize.blue.bold}:

  #{"14 |".colorize.dim} MyMispelledConstent.do_something

Did you mean #{"MyMispelledConstant".colorize(:yellow)}?
ERROR
