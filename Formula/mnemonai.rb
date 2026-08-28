class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.17.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "0b6d763a3f5bdc1f0c81e5225b4ef9b6c9bc9a9730068678fb55b70ceeb32802"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.17.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "977c1d929857c318d52b03a1f1dcc63ec84e7735d1631c6b728311a4ffbf90c5"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.17.0/mnemonai-linux-amd64.tar.gz"
    sha256 "fef4676ec4ee8294be09b37ff57d4887bb95dd3084b1254307c97ece2c0ae65f"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
