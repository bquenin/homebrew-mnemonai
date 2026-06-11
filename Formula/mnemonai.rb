class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.10.1/mnemonai-darwin-arm64.tar.gz"
      sha256 "0c7e60f58ad9262032486cd8245d0119c194af1a069af7b1f8b2134551a0ed2e"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.10.1/mnemonai-darwin-amd64.tar.gz"
      sha256 "32a8f2869f287d1cf42d0c713ee5cf6f29d4a237593244998a68be209e0171c8"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.10.1/mnemonai-linux-amd64.tar.gz"
    sha256 "b61f07040ccfd8d366aead159dbe151e617e098889df2ab6a3d2e15e7f2a6559"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
