class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.12.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "69cddd054e4ce5ac0f20783894e50aa61896790c469884e26c396965de0487aa"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.12.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "97130026155495da18d33fae5fff986a1ef34452595dc6eebcd1d01f472bd363"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.12.0/mnemonai-linux-amd64.tar.gz"
    sha256 "c67e4dd0945e5e6d9d516b14c53597c40cd8b4504df1b46a5ade193b794c04a2"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
