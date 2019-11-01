require "colorize"

puts <<-ERROR
#{"Showing concise trace. Use --error-trace to expand.".colorize.dim}

- #{"html Users::ShowPage, user: user".colorize.bold}
  src/actions/users/show.cr.cr:11
- #{"render_user(@user)".colorize.bold}
  src/actions/users/show_page.cr.cr:11

In #{"src/pages/users/show_page.cr:23".colorize.underline}

 #{"23 |".colorize.dim} #{"full_name(@user.age)".colorize.bold}
      #{"^~~~~~~~~".colorize.green}

#{"Error:".colorize.red.bold} no overload matches 'full_name' with type Int32.

Overloads are:
 - full_name(name : String)
 - full_name(name : User)


ERROR
