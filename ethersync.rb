class Ethersync < Formula
  desc "Ethersync enables real-time collaborative editing of local text files"
  homepage "https://github.com/ethersync/ethersync"
  url "https://github.com/ethersync/ethersync/releases/download/v0.7.0/ethersync-universal-apple-darwin.tar.gz"
  sha256 "a68aa37abd2e3b549fb50ed4b0a634154e449f4ea6da97f17abe1d9d2726f8a9"
  license "AGPL-3.0-only"

  def install
    bin.install "ethersync"
  end

  test do
    output = shell_output("#{bin}/ethersync --help")
    assert_match "ethersync", output
  end
end
