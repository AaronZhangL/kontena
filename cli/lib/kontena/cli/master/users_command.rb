module Kontena::Cli::Master
  class UsersCommand < Kontena::Command

    warn Kontena.pastel.yellow('[DEPRECATED] Use "kontena master user" instead')

    subcommand "invite", "Invite user to Kontena Master", load_subcommand('master/user/invite_command')
    subcommand ["remove", "rm"], "Remove user from Kontena Master", load_subcommand('master/user/remove_command')
    subcommand ["list", "ls"], "List users", load_subcommand('master/user/list_command')
    subcommand "role", "User role specific commands", load_subcommand('master/user/role_command')


  end
end
