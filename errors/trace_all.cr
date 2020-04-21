require "colorize"

puts <<-ERROR
#{"In Users::Show#html(Users::ShowPage, User)".colorize.blue.bold}
#{"src/actions/users/show.cr:8".colorize.bold}

  html(Users::ShowPage, current_user)

#{"In Users::ShowPage#render_user(User)".colorize.blue.bold}
#{"src/actions/users/show_page.cr:14".colorize.bold}

  #{"full_name(1)".colorize.bold}
  #{"^~~~~~~~~~~".colorize.bold.red}

#{" Error ".colorize.on_red.bold.white} #{"no overload matches 'full_name' with type Int32.".colorize}

Overloads are:
 - full_name(name : String)
 - full_name(name : User)


ERROR
