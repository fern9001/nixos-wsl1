{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    neofetch
    nodejs-14_x
    htop
    git
    wget
    which
    ranger
  ];
}
