class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.8.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "011e75d165a55dc904d98a821ba28ccb9e34ae59c0b8ec771597cb1018b66e06"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.8.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "f444817a332a866547595fe72e48542750027b9d4dd3c326207b5c7fdb20c034"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.8.0/mnemonai-linux-amd64.tar.gz"
    sha256 "16e36618ca654d9270d4b89e10f9641a8a7e5bb5fccaa6bfac17e116ef3ce8cc"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
