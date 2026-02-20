class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.3.2/mnemonai-darwin-arm64.tar.gz"
      sha256 "7332b037de81f6f590c9bd9f759a1a9d2731edfb1cb648b59a9b473c31c688b6"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.3.2/mnemonai-darwin-amd64.tar.gz"
      sha256 "fdbefa926b5c1ee3eb1b75b6bb58aada428df0904ae7de9e41c750468824d974"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.3.2/mnemonai-linux-amd64.tar.gz"
    sha256 "727157e94fce6a5362333699783547a5e0928fd3b6a48e2607c33b014d5c5715"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
