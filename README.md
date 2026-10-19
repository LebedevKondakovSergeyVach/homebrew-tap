# homebrew-tap

Formulae for [Terminal Session Proxy Manager](https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager).

## tspm

A command that stores SOCKS and HTTP proxy profiles and prints the environment
exports for the current terminal session. Latency checks and a shell helper use
the same profiles.

```bash
brew install LebedevKondakovSergeyVach/tap/tspm
```

This copies `tspm` onto `PATH`. The binary does not edit the parent shell. To
define `proxy` for new terminals:

```bash
echo 'eval "$(tspm init zsh)"' >> ~/.zshrc
```

Use `bash` instead of `zsh` when that is the login shell. `proxy on` applies
the saved profile. `proxy off` removes it.

The formula installs the release archive built for the current OS (macOS or
Linux) and CPU (arm64 or x86_64). The project release workflow updates all
four `url` and `sha256` pairs when a version ships. This tap does not build the
tool from source.
