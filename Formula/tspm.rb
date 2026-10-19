# Installs the `tspm` command.
#
# The command stores SOCKS and HTTP proxy profiles and prints shell export
# statements for the current terminal. It does not change the parent shell.
# `eval "$(tspm init zsh)"` (or `bash`) defines a
# `proxy` function that applies those exports after a profile is selected.
#
# `brew install` copies the release binary onto PATH. Profiles live in the
# user config directory and are not created by this formula.
class Tspm < Formula
  desc "Per-session SOCKS/HTTP proxy profiles, checks, and shell exports"
  homepage "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager"

  version "2.4.0"
  url "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager/releases/download/v2.4.0/terminal-session-proxy-manager-macos-x86_64.tar.gz"
  sha256 "493fc7eebc84d5006f8807c8f4759a84aa5a9c7402e3beb430135037ab6a502a"

  def install
    bin.install "tspm"
  end

  test do
    system "#{bin}/tspm", "--version"
  end
end
