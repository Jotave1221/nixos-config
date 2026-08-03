  { pkgs, ... }:

  {
    programs.kitty = {
      enable = true;
      settings = {
        font_family = "JetBrainsMono Nerd Font";
        font_size = "11.0";
        bold_font = "auto";
        italic_font = "auto";
        bold_italic_font = "auto";
        background_opacity = "0.55";
        confirm_os_window_close = 0;
      };
    };
  }
