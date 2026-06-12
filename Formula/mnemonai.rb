class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.11.1/mnemonai-darwin-arm64.tar.gz"
      sha256 "7d40ea9c69b25e3047c58aaff0abdd51e18b6e96a567b9ce23dabef46eab4c14"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.11.1/mnemonai-darwin-amd64.tar.gz"
      sha256 "2675b698cab5cd1e731dcc0dc71bbb81ff89f57607d2f72bceb22135125acdec"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.11.1/mnemonai-linux-amd64.tar.gz"
    sha256 "e7b127c6b2bac43fc4b1fd1891e38b492995ffa87d52d74ffd1c5b3940663c4d"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
