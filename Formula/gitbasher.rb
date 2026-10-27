# Rendered by .github/workflows/release.yml and pushed to maxbolgarin/homebrew-tap.
# Do not edit Formula/gitbasher.rb in the tap by hand — change this template.
class Gitbasher < Formula
  desc "Simple bash utility that makes git easy to use"
  homepage "https://github.com/maxbolgarin/gitbasher"
  url "https://github.com/maxbolgarin/gitbasher/releases/download/v5.6.1/gitb"
  sha256 "3a611b711cba4945b479195d7b2930155571cab8b29f1ac3f1e6fc6d078f5e1e"
  license "MIT"

  depends_on "git"

  def install
    bin.install "gitb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitb --version")
  end
end
