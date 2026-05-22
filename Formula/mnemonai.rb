class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.9.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "40a6905c1979cc9bf08e936a46ed73d4b9623b197d86bb9034e342d3499b9a79"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.9.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "51be8b1801f46d08ec6a51c85432015761ca857bb56a1be42f2395a5151bd275"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.9.0/mnemonai-linux-amd64.tar.gz"
    sha256 "d9e114dad053fe428c03672df94d01dd06035f14cebe41777187e34b8dbc9c66"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
