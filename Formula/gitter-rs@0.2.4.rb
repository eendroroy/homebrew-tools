class GitterRsAT024 < Formula
  desc "A fast, concurrent CLI utility for running commands across multiple Git repositories."
  homepage "https://github.com/eendroroy/gitter-rs"
  version "0.2.4"
  license "AGPL-3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-aarch64-apple-darwin.zip"
    sha256 "ee4154c4333ecd582de4c6096ae756b68fdcb912cd344a0cae9322f1097de801"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-x86_64-apple-darwin.zip"
    sha256 "dab8a7117ee16cfadb1df094a3c0e3567566fcea083f1d4a81e5888b1f201c30"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-aarch64-unknown-linux-gnu.zip"
    sha256 "3e5c63d349357f7eeb27406b61cf797212f32104f5834c8db53e7f2464add064"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-x86_64-unknown-linux-gnu.zip"
    sha256 "e0357e53af711ece61bda171e896a8332e313ffdcafcc73b626778c108280d2f"
  end

  def install
    bin.install "gitter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitter --version")
  end
end
