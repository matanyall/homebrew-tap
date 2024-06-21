class Frobnicate < Formula
  desc "Tool for interacting with Turbo Encabulators"
  homepage "https://github.com/matanyall/frobnicate"

  url "https://github.com/matanyall/frobnicate/releases/download/v0.2.0/frobnicate_v0.2.0_macos-14.pex"

  version "0.2.0"
  sha256 "fcb9d205212d01759295d6f65c66d3b806a1baeb4904bbb1a37ac598c7972b93"
  license ""
  depends_on "python@3.12"

  def install
    pex_file = Dir.glob("frobnicate*.pex").first
    bin.install pex_file => "frobnicate"
  end

  test do
    system "#{bin}/frobnicate", "--help"
  end
end
