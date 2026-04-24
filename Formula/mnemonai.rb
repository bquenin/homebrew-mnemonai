class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.7.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "feef494edeab5f6bcf68f6da58c25fe73ed0dd9346798ba4d0fe6bd611e8f6cb"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.7.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "cad761781959ccfac1fd43963ec482aef69a2344df0de8d470594d1828c9c67d"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.7.0/mnemonai-linux-amd64.tar.gz"
    sha256 "0cd7ed0f30db48d8b0055075f24b97a6788990ba563396cd8e590eb6c44a3f2e"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
