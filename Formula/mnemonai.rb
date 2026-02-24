class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.4.1/mnemonai-darwin-arm64.tar.gz"
      sha256 "1f9823867d99c447f8938dbf504c478c66527e60993d9472c2e63ef6f686feb3"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.4.1/mnemonai-darwin-amd64.tar.gz"
      sha256 "16c4e2c5a26abb3bcdce9e0cfec5d1ec45e5a474420a15a38a8244e9e6402c39"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.4.1/mnemonai-linux-amd64.tar.gz"
    sha256 "5050a8b3bed1e5aa79d25026cd03effaa677bc5215c93c5fc26a09bf2ebb7e6c"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
