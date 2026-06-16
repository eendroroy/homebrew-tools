class GitterRs < Formula
  desc "A powerful git utility written in Rust"
  homepage "https://github.com/eendroroy/gitter-rs"
  version "0.1.0"
  license "AGPL-3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-aarch64-apple-darwin.zip"
    sha256 "1d13afc86891c19b490932c1732c3e071a2e6294a1684518f6153488792499f1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-x86_64-apple-darwin.zip"
    sha256 "5a2a957c68958a1ef4714febcd2030062a516418c555a9a52ba2776818cbf3dd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-x86_64-unknown-linux-gnu.zip"
    sha256 "a17e3cc6f3e8a3ed0799bed8ff1801eb78e2b687d84137e4dcbcf7fefdcf8c40"
  end

  def install
    bin.install "gitter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitter --version")
  end
end