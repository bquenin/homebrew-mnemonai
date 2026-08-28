class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.17.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.17.2/mnemonai-darwin-arm64.tar.gz"
      sha256 "56b5292c796cf28ae0a8b93ea1700fbf4a15b8ffb873f94d6e4cb467235cceff"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.17.2/mnemonai-darwin-amd64.tar.gz"
      sha256 "7b3dad7cf1a40c383005957e74fa944df4eea07c081a35f33c256d527faa4652"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.17.2/mnemonai-linux-arm64.tar.gz"
      sha256 "69a7e941e9c0efa18408751f906147e9f834642d8db17ecce7c2ef73a4492779"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.17.2/mnemonai-linux-amd64.tar.gz"
      sha256 "462c9d814556078bc2d1c791c5bcc07943422665401e06586a1eef025bce1eed"
    end
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
