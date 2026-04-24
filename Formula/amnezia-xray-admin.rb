class AmneziaXrayAdmin < Formula
  desc "Personal CLI + Telegram bot for a double-hop Xray VPN"
  homepage "https://github.com/gaiverrr/amnezia-xray-admin"
  url "https://github.com/gaiverrr/amnezia-xray-admin/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "1766806b2375184f061691748c88c6e97124b228c824a922218ed73450efd762"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "amnezia-xray-admin", shell_output("#{bin}/amnezia-xray-admin --help")
  end
end
