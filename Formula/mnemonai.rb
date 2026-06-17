class Mnemonai < Formula
  desc "Universal AI coding conversation history browser"
  homepage "https://github.com/bquenin/mnemonai"
  version "0.12.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/mnemonai/releases/download/v0.12.2/mnemonai-darwin-arm64.tar.gz"
      sha256 "53b031cf8c1e2f57cc12cca21a77179cb9a9a48d84dbcbb52e7fcfa52e0d4333"
    else
      url "https://github.com/bquenin/mnemonai/releases/download/v0.12.2/mnemonai-darwin-amd64.tar.gz"
      sha256 "86f138e94ade374fab1bd13c6589599a17c98acda9883dd0ce7cf94252692eb5"
    end
  end

  on_linux do
    url "https://github.com/bquenin/mnemonai/releases/download/v0.12.2/mnemonai-linux-amd64.tar.gz"
    sha256 "4189bbc55e211c54af886e831a66a14ae913ae246d83850e71dce1211bbdf37a"
  end

  def install
    bin.install "mnemonai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mnemonai --version")
  end
end
