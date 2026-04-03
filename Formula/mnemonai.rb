class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.5.1/mnemonai-darwin-arm64.tar.gz"
      sha256 "aa8498cc0e2940671487baff1c1fd1d778d1c72253b406db73f88f553aedb074"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.5.1/mnemonai-darwin-amd64.tar.gz"
      sha256 "44e01ae771ffd77c8205460d363b9dd5ea1fe037984b66e3a1a248318f179ba2"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.5.1/mnemonai-linux-amd64.tar.gz"
    sha256 "ed37025fb5178ca07f3c97f0c421f420441dfbbd792c0a7f661af6c15aa09b11"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/mnemonai --version")
  end
end
