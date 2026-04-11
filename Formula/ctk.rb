class Ctk < Formula
  desc "Reduce terminal output before it reaches AI assistant context"
  homepage "https://github.com/jackymint/cliTokenKill"
  url "https://github.com/jackymint/cliTokenKill/archive/refs/tags/v0.12.0.tar.gz"
  sha256 "dc6a8fdb8d002da41c1c68a9bd2be4e1af5c97eca9b009e20141ad7bb2e5936e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ctk", shell_output("#{bin}/ctk --help")
  end
end