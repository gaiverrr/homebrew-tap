class AmneziaXrayAdmin < Formula
  desc "TUI dashboard for managing Amnezia VPN's Xray server"
  homepage "https://github.com/gaiverrr/amnezia-xray-admin"
  url "https://github.com/gaiverrr/amnezia-xray-admin/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "7f6fb85d8b9f0d98a10f83e00ee0e5838ee12528e48f6bb21287d5221b869511"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "amnezia-xray-admin", shell_output("#{bin}/amnezia-xray-admin --help")
  end
end
