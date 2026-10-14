class TerminalSessionProxyManager < Formula
  desc "Terminal Session Proxy Manager"
  homepage "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager"

  version "2.3.1"
  url "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager/releases/download/v2.3.1/terminal-session-proxy-manager-macos-x86_64.tar.gz"
  sha256 "39c21600c1be891ba9dbab40019669286c4c67223c929141d6c60f3a18bc95e1"

  def install
    bin.install "terminal-session-proxy-manager"
  end

  test do
    system "#{bin}/terminal-session-proxy-manager", "--version"
  end
end
