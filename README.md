# homebrew-tap

Formulae for [Terminal Session Proxy Manager](https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager).

## terminal-session-proxy-manager

A command that stores SOCKS and HTTP proxy profiles and prints the environment
exports for the current terminal session. Latency checks and a shell helper use
the same profiles.

```bash
brew install LebedevKondakovSergeyVach/tap/terminal-session-proxy-manager
```

This copies `terminal-session-proxy-manager` onto `PATH`. The binary does not
edit the parent shell. To define `proxy` for new terminals:

```bash
echo 'eval "$(terminal-session-proxy-manager init zsh)"' >> ~/.zshrc
```

Use `bash` instead of `zsh` when that is the login shell. `proxy on` applies
the saved profile. `proxy off` removes it.

The formula `url` and `sha256` are updated by the project release workflow when
a version ships. This tap does not build the tool from source.
