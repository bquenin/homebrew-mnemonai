class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.10.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "123b901e107540c2bedc7594cff89a240faa47a4370a2cf92c836ef6c4730a74"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.10.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "1b65965bbfa178fef6f821c50828540007492d0799c9751b57f7661f742abc93"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.10.0/mnemonai-linux-amd64.tar.gz"
    sha256 "5ff16e97dd33283cbc721ac5a6585e57b425c7d5b0a3a58649ede881c9a38dd7"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
