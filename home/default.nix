{ pkgs, ... }:

{
  imports = [
    ./programs/alacritty.nix
    ./programs/bat.nix
    ./programs/direnv.nix
    ./programs/exa.nix
    ./programs/gh.nix
    ./programs/git.nix
    ./programs/hammerspoon.nix
    ./programs/starship.nix
    ./programs/tmux.nix
    ./programs/vim.nix
    ./programs/vscode.nix
    ./programs/zsh.nix
    ./misc/jetbrains.nix
    ./misc/solarized.nix
  ];

  xdg.enable = true;

  home.packages = with pkgs; [
    aws-vault
    fd
    ripgrep
    yubikey-manager
  ];

  programs = {
    fzf.enable = true;
    gpg.enable = true;
    jq.enable = true;
    zsh.cdpath = [ "~/src/github.com" ];
  };

  programs.home-manager.enable = true;
  programs.tmux.secureSocket = false;

  home.stateVersion = "20.09";
}
