{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user.name = "Christa Clegg";
      user.email = "cleggct@gmail.com";
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };
}
