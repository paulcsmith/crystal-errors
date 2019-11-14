require "colorize"

private def arrow
  "▸".colorize.dim
  "-"
  "●".colorize.dim
end

puts <<-ERROR

#{"Beginning of trace:".colorize.bold} #{"(Use --error-trace to expand)".colorize.dim}

#{"In Lucky::Action#perform_action".colorize.bold.cyan}
#{"handler.payload.new(context, handler.params).perform_action".colorize.bold}
#{"lib/lucky/src/lucky/route_handler.cr:10".colorize}

#{"In Lucky::Action#response".colorize.bold.cyan}
#{"response = call".colorize.bold}
#{"lib/lucky/src/lucky/renderable.cr:97".colorize}

#{"In Users::Show#call(Users::ShowPage, User)".colorize.bold.cyan}
#{"html Users::ShowPage, user: user".colorize.bold}
#{"src/actions/users/show.cr.cr:11".colorize}

#{"In Users::ShowPage#render_user(User)".colorize.bold.cyan}
#{"render_user(@user)".colorize.bold}
#{"src/actions/users/show_page.cr.cr:11".colorize}

#{"In".colorize.bold.yellow} #{"Users::ShowPage#render_user(User)".colorize.bold.yellow}
#{"src/pages/users/show_page.cr:23".colorize}

 #{"23 |".colorize.dim} #{"full_name(@user.age)".colorize.bold}
                #{"^--------".colorize.yellow.bold}

#{"Error:".colorize.yellow.bold} #{"no overload matches 'full_name' with type Int32.".colorize.bold}

Overloads are:
 - full_name(name : String)
 - full_name(name : User)


ERROR
# {"Error: no overload matches 'full_name' with type Int32.".colorize.yellow.bold}
# {"Error:".colorize.bold.yellow} no overload matches 'full_name' with type Int32.

  #{"23 |".colorize.dim} #{"full_name(@user.age)".colorize.bold}
  #{"src/pages/users/show_page.cr:23".colorize.underline}