class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.13.1/mnemonai-darwin-arm64.tar.gz"
      sha256 "26017bc6245d191dd3c3f9d33d849e711339cf8a18b4e12eb084991a21b70f3c"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.13.1/mnemonai-darwin-amd64.tar.gz"
      sha256 "2ac3b5a8c1fde4f1934f45482a328f3713a0fe9b42a87ce1029d6e30d927c92b"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.13.1/mnemonai-linux-amd64.tar.gz"
    sha256 "21503f2772eded0f8a80f9b32df38ee22f65c5b941ac79aabf13eed0b07e01af"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
