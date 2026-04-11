class Ctk < Formula
  desc "Reduce terminal output before it reaches AI assistant context"
  homepage "https://github.com/jackymint/cliTokenKill"
  url "https://github.com/jackymint/cliTokenKill/archive/refs/tags/v0.14.0.tar.gz"
  sha256 "60eae7238bb98c6f79f637c01b51dfe555e7b9d7a0bbe29e0beb0d8b0bac216e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ctk", shell_output("#{bin}/ctk --help")
  end
end
