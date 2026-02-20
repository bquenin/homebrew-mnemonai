class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.2.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "eb549adcce9c4f01b048041703578f17351e1eeb4a30ca806ed7c64d18eb2108"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.2.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "207265d2728bbaa07d1a19f7b6cce39f2f0878508950f9bdca0005d6df8d5a69"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.2.0/mnemonai-linux-amd64.tar.gz"
    sha256 "549ea355f2191e5ef8a33ef3004f58f77514a6014d7c0d6c8459b0f337661e5e"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
