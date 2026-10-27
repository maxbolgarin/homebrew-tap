# Rendered by .github/workflows/release.yml and pushed to maxbolgarin/homebrew-tap.
# Do not edit Formula/gitbasher.rb in the tap by hand — change this template.
class Gitbasher < Formula
  desc "Simple bash utility that makes git easy to use"
  homepage "https://github.com/maxbolgarin/gitbasher"
  url "https://github.com/maxbolgarin/gitbasher/releases/download/v5.6.2/gitb"
  sha256 "2b4261fcc55efd6c4f0109ccf71898bbf32bc52377128449a3bfb1b101ad60c8"
  license "MIT"

  depends_on "git"

  def install
    bin.install "gitb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitb --version")
  end
end
