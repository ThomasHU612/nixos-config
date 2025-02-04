{ ... }:
{
    xdg.configFile."ghostty/config".text = ''
    macos-option-as-alt = true
    # font-family = JetBrains Mono
    font-size = 45

    # COLORS
    background = #ffffff
    foreground = #000000
    selection-background = #283457
    selection-foreground = #a8b5d1

    # black
    palette = 0=#15161e
    palette = 8=#506686
    # red
    palette = 1=#f7768e
    palette = 9=#f7768e
    # green
    palette = 2=#34febb
    palette = 10=#34febb
    # yellow
    palette = 3=#ffbf7a
    palette = 11=#ffbf7a
    # blue
    palette = 4=#82aaff
    palette = 12=#82aaff
    # purple
    palette = 5=#c792ea
    palette = 13=#c792ea
    # aqua
    palette = 6=#4ff2f8
    palette = 14=#4ff2f8
    # white
    palette = 7=#7c8eac
    palette = 15=#c5cee0
    # extra
    palette = 16=#ffbf7a
    palette = 17=#ff5874

    # CURSOR

    cursor-color = #a8b5d1
    cursor-text = #1a1b26
  '';
}
