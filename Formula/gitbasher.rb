# Rendered by .github/workflows/release.yml and pushed to maxbolgarin/homebrew-tap.
# Do not edit Formula/gitbasher.rb in the tap by hand — change this template.
class Gitbasher < Formula
  desc "Simple bash utility that makes git easy to use"
  homepage "https://github.com/maxbolgarin/gitbasher"
  url "https://github.com/maxbolgarin/gitbasher/releases/download/v5.6.0/gitb"
  sha256 "17b1682b80134113f14438781255724fc4b8a5139e3faed2d9c8ef120b1fd9d0"
  license "MIT"

  depends_on "git"

  def install
    bin.install "gitb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitb --version")
  end
end
