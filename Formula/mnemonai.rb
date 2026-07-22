class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.15.0/mnemonai-darwin-arm64.tar.gz"
      sha256 "90c27a1038b19591f698e34318a256d04bdd37eeac07d234d449f7da093ac53c"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.15.0/mnemonai-darwin-amd64.tar.gz"
      sha256 "882224d458a033843c1fce84478c026935ce5a63e06b0f9fa99fb96fa2433053"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.15.0/mnemonai-linux-amd64.tar.gz"
    sha256 "46c63a00e8fceeba3fe926e6eab3268e1ac0f326ddec0800eb7e38a1341da240"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
