class GitterRs < Formula
  desc "A fast, concurrent CLI utility for running commands across multiple Git repositories."
  homepage "https://github.com/eendroroy/gitter-rs"
  version "0.2.4"
  license "AGPL-3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-aarch64-apple-darwin.zip"
    sha256 "13bb44478fd745afd856c8159f7715fe6f5fd1801ee0d81afd527e85587092c5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-x86_64-apple-darwin.zip"
    sha256 "9f88632840fbff9d06a6306a78be21ec209a34d38444c1736d22fe9036ef0a41"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-aarch64-unknown-linux-gnu.zip"
    sha256 "7b23c8f2709d90756a7d701b66d83c2e3094e640bbf42a90e8c07666ce4185d1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-x86_64-unknown-linux-gnu.zip"
    sha256 "f396f33300e34255370126b097ef8902a517146cf1904fecd3dff844ae2bc25f"
  end

  def install
    bin.install "gitter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitter --version")
  end
end
