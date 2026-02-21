class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.4.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "ab005fb6a021f0295a5eec805f8b97f9448183d1ede7a5fe1d3688db395c49ca"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.4.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "b2cf682ba49192b3f36305b651da9ca0bd840b16ae5c8162fcfb9e4fdc78143c"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.4.0/mnemonai-linux-amd64.tar.gz"
    sha256 "5bcde6403e1065ac44a7c611144696a6a086bc89e867c839a72b866ad57985fa"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
