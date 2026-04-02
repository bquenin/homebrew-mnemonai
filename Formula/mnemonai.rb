class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.5.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "0006c208ef600096ef0111be248122147faf7a4630aca34ca59bf456922b2221"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.5.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "b47b0bee38986be8291467b2390ebef12f25a0a99409fe7b893e776f578b4338"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.5.0/mnemonai-linux-amd64.tar.gz"
    sha256 "530056ff76b71fd7d74a6ec3d6bf28f781a943357c310249014cb4cb8bc6b12b"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
