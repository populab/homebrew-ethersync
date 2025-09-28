class Ethersync < Formula
  desc "Ethersync enables real-time collaborative editing of local text files"
  homepage "https://github.com/ethersync/ethersync"
  url "https://github.com/ethersync/ethersync/releases/download/v0.8.0/ethersync-universal-apple-darwin.tar.gz"
  sha256 "ef403bf782acf8f354a7faa11da3622eec0a3291613f419a724850e330dd5278"
  license "AGPL-3.0-only"

  def install
    bin.install "ethersync"
  end

  test do
    output = shell_output("#{bin}/ethersync --version")
    assert_match "ethersync", output
  end
end
