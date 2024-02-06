  { config, pkgs, ... }:
  {
environment.systemPackages = with pkgs; [
    # term/bash stuff
    kitty
    bat
    autojump
    zsh
    
    # display stuff
    sddm
    rofi
    dunst
    waybar
    swaybg
    swayidle    
    swaylock-effects
    wlogout

    # theme
    papirus-icon-theme
    nordic
    nwg-look

    # dev    
    gh
    git
    vscode
    (python3.withPackages(ps: with ps; [ pip requests]))
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        ms-python.python
        svelte.svelte-vscode
        golang.go
      ];
    })
    go
    docker-compose
    neovim
    sublime

    # misc 
    neofetch
    discord
    spotify
    gojq
    bc
    btop
    zoxide
    sway-contrib.grimshot

    # gaming
    lutris
    gamescope
    teamspeak_client
    teamspeak5_client
    
    # utility
    killall
    lsd  # nicer ls
    pciutils
    playerctl
    wev

    # video
    vlc
    kdenlive

    # sound
    pulseaudio
    pamixer
    pavucontrol

    # browser
    google-chrome
    
    # virt stuff
    virt-manager
    looking-glass-client

    # wine-staging (version with experimental features)
    wineWowPackages.staging
    winetricks
    wineWowPackages.waylandFull

    # unsorted
    polkit_gnome
    libva-utils
    fuseiso
    udiskie
    gnome.adwaita-icon-theme
    gnome.gnome-themes-extra
    nvidia-vaapi-driver
    gsettings-desktop-schemas
    swaynotificationcenter
    wlr-randr
    ydotool
    wl-clipboard
    hyprland-protocols
    xdg-desktop-portal-hyprland
    wofi
    firefox-wayland
    swww
    grim
    xdg-utils
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    qt5.qtwayland
    qt6.qmake
    qt6.qtwayland
    adwaita-qt
    adwaita-qt6
    ffmpegthumbnailer
  ];
programs.starship.enable = true;
  }
  
