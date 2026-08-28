class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.16.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.16.1/mnemonai-darwin-arm64.tar.gz"
      sha256 "b326be9e5df5e835b8ac0fd687202b87420195211e3484e644f78040bb38aeeb"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.16.1/mnemonai-darwin-amd64.tar.gz"
      sha256 "4ae2c2d3af2b40dd1873eb20edb70331af575d9f1d0575e4b2cfde30cf630240"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.16.1/mnemonai-linux-amd64.tar.gz"
    sha256 "b490bd77551c93a97351b328212440701553aa09869f39e2d1557c4814308dc1"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
