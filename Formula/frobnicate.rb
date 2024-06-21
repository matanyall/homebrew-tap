class Frobnicate < Formula
  desc "Tool for interacting with Turbo Encabulators"
  homepage "https://github.com/matanyall/frobnicate"

  url "https://github.com/matanyall/frobnicate/releases/download/v0.1.0/frobnicate_v0.1.0_macos-14.pex"

  version "0.1.0"
  sha256 "a871d90c4ff2d86e6bfb1fe4233e94ac72d3b1d17adef18a0d8a185c7d2db530"
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
