class AmneziaXrayAdmin < Formula
  desc "TUI dashboard for managing Amnezia VPN's Xray server"
  homepage "https://github.com/gaiverrr/amnezia-xray-admin"
  url "https://github.com/gaiverrr/amnezia-xray-admin/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "2423a7ff3f97968d532788d813cd78b4884fba44a7881c0c2c6955f9cf007f6e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "amnezia-xray-admin", shell_output("#{bin}/amnezia-xray-admin --help")
  end
end
