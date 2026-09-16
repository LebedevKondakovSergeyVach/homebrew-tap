class TerminalSessionProxyManager < Formula
  desc "Terminal Session Proxy Manager"
  homepage "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager"

  version "2.3.0"
  url "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager/releases/download/v2.3.0/terminal-session-proxy-manager-macos-x86_64.tar.gz"
  sha256 "1e71d5bdbb78a35e48ba8f939db14cbc1921bc17ca8e95484512b73853c25ee2"

  def install
    bin.install "terminal-session-proxy-manager"
  end

  test do
    system "#{bin}/terminal-session-proxy-manager", "--version"
  end
end
