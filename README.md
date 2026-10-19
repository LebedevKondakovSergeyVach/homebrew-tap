# homebrew-tap

Formulae for [Terminal Session Proxy Manager](https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager)
and [Grove](https://github.com/LebedevKondakovSergeyVach/grove).

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

## grove

A command that runs one git workflow across a workspace of related
repositories. Grove has no release yet, so the formula builds `main` from source
with Rust:

```bash
brew install --HEAD LebedevKondakovSergeyVach/tap/grove
```

The grove release workflow replaces this formula with native release archives
for macOS and Linux (arm64 and x86_64) when the first version ships. Install it
then with `brew install LebedevKondakovSergeyVach/tap/grove`.
