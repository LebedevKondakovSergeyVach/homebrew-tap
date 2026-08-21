class TerminalSessionProxyManager < Formula
  desc "Terminal Session Proxy Manager"
  homepage "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager"

  version "2.2.2"
  url "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager/releases/download/v2.2.2/terminal-session-proxy-manager-macos-x86_64.tar.gz"
  sha256 "96873b957e2d6e854b694612cecf438085efd1799e018360c718fb47eef5a6bb"

  def install
    bin.install "terminal-session-proxy-manager"
  end

  test do
    system "#{bin}/terminal-session-proxy-manager", "--version"
  end
end
