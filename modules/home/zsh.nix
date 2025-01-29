{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      theme = "agnoster";
      plugins = [ "git" "z" "sudo" ];
    };
    dotDir = ".config/zsh";
  };

  environment.systemPackages = with pkgs; [
    zsh
  ];
}
