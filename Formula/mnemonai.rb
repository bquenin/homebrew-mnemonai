class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.6.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "31be834d90dc34d413aa37273ee44e6e60ac8c78bcab2c6904f2e800cd50f28d"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.6.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "456cf14b292cb3683e1c3ca07ac236e0b1b81b158bf90ba943e7a5c6379fd012"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.6.0/mnemonai-linux-amd64.tar.gz"
    sha256 "c2773ad69da3585bfda7cbaa5a1e2e5c0e4da0477ca3dda0e12a33565bf4e351"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
