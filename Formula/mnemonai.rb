class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.1.1/mnemonai-darwin-arm64.tar.gz"
      sha256 "23b7e6340ec7637d467feca5298626776415b6fd88cdd47ce25a4499f2572261"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.1.1/mnemonai-darwin-amd64.tar.gz"
      sha256 "bbee775e015265093d38fce193a6426d28aee078534e2a54de3386ba9f29c0f1"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.1.1/mnemonai-linux-amd64.tar.gz"
    sha256 "9918fa78fab6169f87bc7a41dd356b31c67e85a74da1efe0b785537eaf7e7986"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
