class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.1.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "7f69d5b662dcbe8cc900dc5536095d6c487908b513c37290368a60266f1b3504"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.1.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "6fee4800e03e2f79b5f800a671fe3b757a92342a7ce8623810ce00c02d5b88da"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.1.0/mnemonai-linux-amd64.tar.gz"
    sha256 "1c62376b4819500a46ea20ead945b8876088de089557e059bbd6d87bcbd3fea6"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
