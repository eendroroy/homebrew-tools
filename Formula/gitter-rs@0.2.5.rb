class GitterRsAT025 < Formula
  desc "A fast, concurrent CLI utility for running commands across multiple Git repositories."
  homepage "https://github.com/eendroroy/gitter-rs"
  version "0.2.5"
  license "AGPL-3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-aarch64-apple-darwin.zip"
    sha256 "a3a7adef005f3140a9873453ecded3101166556c558a43a67d72d724c777389c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-x86_64-apple-darwin.zip"
    sha256 "83189b5230b2b2d417c7bdb74b57937c3bc8c6df7718d5321af21412e2c40954"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-aarch64-unknown-linux-gnu.zip"
    sha256 "9319a6887b54ce657c7a0ff6f08614b212f309d7376e787c1dee126912ebea9c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/eendroroy/gitter-rs/releases/download/#{version}/gitter-x86_64-unknown-linux-gnu.zip"
    sha256 "134b0bdbd720aca9003acdf331c02b3b4ee879869c6875550eec8a74b9b507b6"
  end

  def install
    bin.install "gitter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitter --version")
  end
end
