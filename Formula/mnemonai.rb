class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.16.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "5c241a7943f3326438db1ea387a6bd5093f1203d2c9ef772ea4cc8bf619ccccd"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.16.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "7b4b2d856c7c59703b0a090854f90ecad150f2394108516f422c4c48da445fe9"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.16.0/mnemonai-linux-amd64.tar.gz"
    sha256 "1f8c2969009b25a119fc10170f363e8098f0713ad4a3fe71297ba596b24a01e1"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
