class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.3.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "30fc6948b7ac49951b010827380f44c6206c4e2196e1c7d726ae2897ccdd358d"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.3.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "b37a0d3d2f4cc1e1ca9d3aa22d45d72ec2191770bc3fc2d66a92a258f514a846"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.3.0/mnemonai-linux-amd64.tar.gz"
    sha256 "df281ea53f0a36b469952517533898bd75881b6af43e79bc70417c586d879339"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
