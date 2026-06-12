class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.11.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "8f64e6c5b9f2d77f853a53dc497bc0eac3d9557da53d256f5a74f696ad8d24a2"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.11.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "4749497cf7c99a5c78a7f7446294a2dfc759ed00b579fb16f7a31f3d09d159cd"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.11.0/mnemonai-linux-amd64.tar.gz"
    sha256 "3b12441eed3ef1d7b2e4eef9e9ca4877cd1d62d3a28222e97f21d6630e2c7abf"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
