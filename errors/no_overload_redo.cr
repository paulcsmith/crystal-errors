require "colorize"

private def arrow
  "▸".colorize.dim
  "-"
end

puts <<-ERROR

#{"Showing concise trace:".colorize.bold} #{"(Use --error-trace to expand)".colorize.dim}

 #{arrow} #{"handler.payload.new(context, handler.params).perform_action".colorize.green.bold}
   #{"Lucky::Action#perform_action".colorize.bold}
   #{"lib/lucky/src/lucky/route_handler.cr:10".colorize}
 #{arrow} #{"response = call".colorize.green.bold}
   #{"Lucky::Action#response".colorize.bold}
   #{"lib/lucky/src/lucky/renderable.cr:97".colorize}
 #{arrow} #{"html Users::ShowPage, user: user".colorize.green.bold}
   #{"Users::Show#html(Users::ShowPage, User)".colorize.bold}
   #{"src/actions/users/show.cr.cr:11".colorize}
 #{arrow} #{"render_user(@user)".colorize.green.bold}
   #{"Users::ShowPage#render_user(User)".colorize.bold}
   #{"src/actions/users/show_page.cr.cr:11".colorize}

#{"Problem found in".colorize.bold} #{"src/pages/users/show_page.cr:23".colorize.underline.bold}

 #{"23 |".colorize.dim} #{"full_name(@user.age)".colorize.bold}
                #{"^--------".colorize.yellow.bold}

#{"Error: no overload matches 'full_name' with type Int32.".colorize.yellow.bold}

Overloads are:
 - full_name(name : String)
 - full_name(name : User)


ERROR
# {"Error: no overload matches 'full_name' with type Int32.".colorize.yellow.bold}
#{"Error:".colorize.bold.yellow} no overload matches 'full_name' with type Int32.
