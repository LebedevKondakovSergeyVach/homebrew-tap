class Tspm < Formula
  desc "Per-session SOCKS/HTTP proxy profiles, checks, and shell exports"
  homepage "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager"
  version "3.0.0"

  on_macos do
    on_arm do
      url "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager/releases/download/v3.0.0/tspm-macos-arm64.tar.gz"
      sha256 "0728b30a541a00afb716fe045be31002bcf7ad0a44f6a15cb3c1b58fd66bf9f8"
    end

    on_intel do
      url "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager/releases/download/v3.0.0/tspm-macos-x86_64.tar.gz"
      sha256 "eee7348eb113e0649a250f21e006b8f471650f71f9c0d57bfd53671547685f50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager/releases/download/v3.0.0/tspm-linux-arm64.tar.gz"
      sha256 "634ab8a70885248936f2e0f037d08b7529035676feb6286dbcf716bdfaaab552"
    end

    on_intel do
      url "https://github.com/LebedevKondakovSergeyVach/Terminal-Session-Proxy-Manager/releases/download/v3.0.0/tspm-linux-x86_64.tar.gz"
      sha256 "f090ba76e8860c40ff24d641311f14e5d3991f13ad6519cf99b4dc0943a0168b"
    end
  end

  def install
    bin.install "tspm"
  end

  test do
    system "#{bin}/tspm", "--version"
  end
end
