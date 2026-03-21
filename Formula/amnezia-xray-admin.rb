class AmneziaXrayAdmin < Formula
  desc "TUI dashboard for managing Amnezia VPN's Xray server"
  homepage "https://github.com/gaiverrr/amnezia-xray-admin"
  url "https://github.com/gaiverrr/amnezia-xray-admin/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0c87abd287c935e877ae0fbf36eb3d1628e6d9f1c11bf2885d1c016a25f6904f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "amnezia-xray-admin", shell_output("#{bin}/amnezia-xray-admin --help")
  end
end
