require "colorize"

private def arrow
  "▸".colorize.dim
  "-"
  "●".colorize.dim
end

puts <<-ERROR

#{"Beginning of trace:".colorize.dim} #{"Use --error-trace to expand.".colorize.dim}

#{"lib/lucky/src/lucky/route_handler.cr:10".colorize.cyan.bold}
#{"In Lucky::Action#perform_action".colorize.bold}
#{"10 |".colorize.dim} #{"handler.payload.new(context, handler.params).perform_action".colorize}

#{"lib/lucky/src/lucky/renderable.cr:97".colorize.cyan.bold}
#{"In Lucky::Action#response".colorize.bold}
#{"97 |".colorize.dim} #{"response = call".colorize}

#{"src/actions/users/show.cr.cr:11".colorize.bold.cyan}
#{"In Users::Show#call(Users::ShowPage, User)".colorize.bold}
#{"11 |".colorize.dim} #{"html Users::ShowPage, user: user".colorize}

#{"src/actions/users/show_page.cr.cr:11".colorize.bold.cyan}
#{"In Users::ShowPage#render_user(User)".colorize.bold}
#{"11 |".colorize.dim} #{"render_user(@user)".colorize}

#{"Problem at ▸".colorize.bold.yellow} #{"src/pages/users/show_page.cr:23".colorize.bold.cyan}
#{"In".colorize.bold} #{"Users::ShowPage#render_user(User)".colorize.bold}

#{"23 |".colorize.dim} #{"full_name(@user.age)".colorize.bold}
               #{"^--------".colorize.yellow.bold}

#{"Error:".colorize.yellow.bold} #{"no overload matches 'full_name' with type Int32.".colorize.bold.yellow}

Overloads are:
 - full_name(name : String)
 - full_name(name : User)


ERROR
# {"Error: no overload matches 'full_name' with type Int32.".colorize.yellow.bold}
# {"Error:".colorize.bold.yellow} no overload matches 'full_name' with type Int32.

# {"23 |".colorize.dim} #{"full_name(@user.age)".colorize.bold}
# {"src/pages/users/show_page.cr:23".colorize.underline}
