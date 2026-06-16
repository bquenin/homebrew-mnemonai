class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.12.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.12.1/mnemonai-darwin-arm64.tar.gz"
      sha256 "9180924d79c0eceafba2f7b24b915b46e487a23fbb77e6f677f78429cf041296"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.12.1/mnemonai-darwin-amd64.tar.gz"
      sha256 "2a94802415a0ed9f5c0952bff3badac7aee75164e502d1308a15663615b01b8a"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.12.1/mnemonai-linux-amd64.tar.gz"
    sha256 "1015e85c5a24d685a90197e9d57c3810fc6ab2e476f972a483050eb6d49b50c9"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
