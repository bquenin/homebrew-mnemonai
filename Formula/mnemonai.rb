class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.12.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.12.3/mnemonai-darwin-arm64.tar.gz"
      sha256 "14826c622cb7c59815f9cbb80b6a3025b4fe0c0a0189aeead27c815c88b4fb6f"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.12.3/mnemonai-darwin-amd64.tar.gz"
      sha256 "140f5c3b2666d7b9c82c226fb357e9addf6676bcb06fb7fb8d9fbf51af656b63"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.12.3/mnemonai-linux-amd64.tar.gz"
    sha256 "3b1bf5b86cc44f1351e0816c58a1ca4e76a5a81d57d67d77b194ab70a9f4958a"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
