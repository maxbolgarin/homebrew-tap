# Rendered by .github/workflows/release.yml and pushed to maxbolgarin/homebrew-tap.
# Do not edit Formula/gitbasher.rb in the tap by hand — change this template.
class Gitbasher < Formula
  desc "Simple bash utility that makes git easy to use"
  homepage "https://github.com/maxbolgarin/gitbasher"
  url "https://github.com/maxbolgarin/gitbasher/releases/download/v5.6.3/gitb"
  sha256 "c5c5329e83aace901206fd35f347ef1ce1bf43fc0b0b70e5171d9af9af8560db"
  license "MIT"

  depends_on "git"

  def install
    bin.install "gitb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitb --version")
  end
end
