class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.14.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "38439b86757d885b579623bb541353b7d6bf3ae08900407c3065124f088bd35f"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.14.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "0f39e6e6616fe57ac5c0d531d540f48efcacf272df3a2b631bbb7fca3f1a2676"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.14.0/mnemonai-linux-amd64.tar.gz"
    sha256 "36a89c1e9859dcec8bce0ad4b7bf1aaa5328963a3d6b3487a6392a706b5807de"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
