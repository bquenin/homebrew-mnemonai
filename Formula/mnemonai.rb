class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.17.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.17.1/mnemonai-darwin-arm64.tar.gz"
      sha256 "ea15d9164ebb1278bcc97087ca23d2240a226ba6d78166d8977cb79e78f2a5cb"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.17.1/mnemonai-darwin-amd64.tar.gz"
      sha256 "1cfd7424ce608f5111c22ef1c30d2f64abbf66391564dc19b9b1408cc94de8e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.17.1/mnemonai-linux-arm64.tar.gz"
      sha256 "b617b668e921b46206a6027ff7c4a39587daab25ec295273aff9b6aab1b25081"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.17.1/mnemonai-linux-amd64.tar.gz"
      sha256 "6ef333ea0aea67ca207d806c1d01a85936e4fcd77e68709f1b697ab479895798"
    end
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
