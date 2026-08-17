class TerminalSessionProxyManager < Formula
  desc "Terminal Session Proxy Manager"
  homepage "https://github.com/LebedevSergeyVach/Terminal-Session-Proxy-Manager"

  version "2.0.0"
  url "https://github.com/LebedevSergeyVach/Terminal-Session-Proxy-Manager/releases/download/v2.0.0/terminal-session-proxy-manager-macos-x86_64.tar.gz"
  sha256 "1111111111111111111111111111111111111111111111111111111111111111"

  def install
    bin.install "terminal-session-proxy-manager"
  end

  test do
    system "#{bin}/terminal-session-proxy-manager", "--version"
  end
end
