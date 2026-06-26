class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.13.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "3b6c682499a1f89dc92dc3ef8a795b964b0ffb48011f0893ef6e3e7e10933790"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.13.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "bb10684d00b105fb57d4b80bc8171ccefc9ecb4a3ddafef0875cc04e8cf40d50"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.13.0/mnemonai-linux-amd64.tar.gz"
    sha256 "b20da0fbad18b69ed648d6af62e6e8f0b571738ef9cc3e563f3e597f2e36846b"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
