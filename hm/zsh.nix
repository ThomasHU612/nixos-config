{ platform, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    history = {
      save = 10000000;
      size = 10000000;
    };
    shellAliases = {
      lg = "lazygit";
      pbcopyy = "xclip -selection c"; # macOS' pbcopy equivalent
      update-time = "sudo date -s \"$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z\"";
    };
    initExtra =
      if platform == "darwin" then ''
        # Check if SSH_AUTH_SOCK is set and points to the default macOS agent
        if [[ -z "$SSH_AUTH_SOCK" || "$SSH_AUTH_SOCK" == /private/tmp/com.apple.launchd.* ]]; then
          # No forwarded agent, use 1Password agent
          export SSH_AUTH_SOCK="$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
        fi
      '' else ''
        # set the symlink that code-server/emacs uses to the most recently logged in $SSH_AUTH_SOCK
        if [ ! -h "$SSH_AUTH_SOCK" ]; then 
          ln -sfv "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock; 
        fi
      '';
  };
}
