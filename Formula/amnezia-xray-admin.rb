class AmneziaXrayAdmin < Formula
  desc "Personal CLI + Telegram bot for a double-hop Xray VPN"
  homepage "https://github.com/gaiverrr/amnezia-xray-admin"
  url "https://github.com/gaiverrr/amnezia-xray-admin/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "4d7f11297d87953701351b8f9d8089b5c9bfc808c4a0ed1961d1cc5b0ecdca77"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "amnezia-xray-admin", shell_output("#{bin}/amnezia-xray-admin --help")
  end
end
