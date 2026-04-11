class Ctk < Formula
  desc "CLI Token Killer - reduce CLI output for AI agents"
  homepage "https://github.com/jackymint/cliTokenKill"
  url "https://github.com/jackymint/cliTokenKill/releases/download/v0.1.0/ctk-macos.tar.gz"
  sha256 "PUT_SHA256_HERE"
  license "MIT"

  def install
    bin.install "ctk"
  end

  test do
    system "#{bin}/ctk", "--help"
  end
end