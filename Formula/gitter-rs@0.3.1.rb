class GitterRsAT031 < Formula
  desc "A fast, concurrent CLI utility for running commands across multiple Git repositories."
  homepage "https://github.com/eendroroy/gitter-rs"
  version "0.3.1"
  license "AGPL-3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-aarch64-apple-darwin.zip"
    sha256 "6944cc3e4e851d5e8a27f187a19f0ad9d22e54c03d041125556ff2258fd3c017"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-x86_64-apple-darwin.zip"
    sha256 "eb7f532b4b6932aaaccd9afe91b8aeec9fe454a1246b2afeeb48d486aa55a271"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-aarch64-unknown-linux-gnu.zip"
    sha256 "79d2c87349b671d75eac0a1c3e6b01a3f0199f978350505f0b17b30e6ccdad18"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-x86_64-unknown-linux-gnu.zip"
    sha256 "c903a95115b300850f3d6c391c89a31a3a8b67070e112fa67fc2d0891eea82bf"
  end

  def install
    bin.install "gitter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitter --version")
  end
end
