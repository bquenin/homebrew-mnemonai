class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.3.1/mnemonai-darwin-arm64.tar.gz"
      sha256 "0712497ffdba7da2b6271ee3b3943b846e9601afb3d27e4b620f8d24b8cf97a1"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.3.1/mnemonai-darwin-amd64.tar.gz"
      sha256 "4bc7deb11f78f711e2c0a3904ed37655dc389df77944f7a1817eb59a2c4754b1"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.3.1/mnemonai-linux-amd64.tar.gz"
    sha256 "5a4e70af528fc1ab9a7016895f6cc958207ab807c159a00bdf1b13f1b1b12ee8"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
