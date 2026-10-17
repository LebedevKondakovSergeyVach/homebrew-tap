class TerminalSessionProxyManager < Formula
  desc "Terminal Session Proxy Manager"
  homepage "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager"

  version "2.4.0"
  url "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager/releases/download/v2.4.0/terminal-session-proxy-manager-macos-x86_64.tar.gz"
  sha256 "493fc7eebc84d5006f8807c8f4759a84aa5a9c7402e3beb430135037ab6a502a"

  def install
    bin.install "terminal-session-proxy-manager"
  end

  test do
    system "#{bin}/terminal-session-proxy-manager", "--version"
  end
end
