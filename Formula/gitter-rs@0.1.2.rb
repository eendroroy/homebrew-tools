class GitterRs < Formula
  desc "A fast, concurrent CLI utility for running commands across multiple Git repositories."
  homepage "https://github.com/eendroroy/gitter-rs"
  version "0.1.2"
  license "AGPL-3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-aarch64-apple-darwin.zip"
    sha256 "9d72e797b99fe8efcff38de61f1d0adfbe2957e66167ada7021444cea1907f20"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-x86_64-apple-darwin.zip"
    sha256 "e5ad8887ea3ca6030fabc3c7a0f85193a3cfede6e133b1f24a545f2428c9be3b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-aarch64-unknown-linux-gnu.zip"
    sha256 "25051504e654b89376291d8c27a010b7de1807c50c44dac5bbde99c101323f00"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-x86_64-unknown-linux-gnu.zip"
    sha256 "b6409ce2e48757c58902ad85c01e58d5be07945485d0e379052d0dc93c33974e"
  end

  def install
    bin.install "gitter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitter --version")
  end
end
