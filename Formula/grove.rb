class Grove < Formula
  desc "CLI for one git workflow across a workspace of related repositories"
  homepage "https://github.com/LebedevKondakovSergeyVach/grove"
  license "AGPL-3.0-only"
  head "https://github.com/LebedevKondakovSergeyVach/grove.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/grove", "--version"
  end
end
