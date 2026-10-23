class Gitbasher < Formula
  desc "Simple bash utility that makes git easy to use"
  homepage "https://github.com/maxbolgarin/gitbasher"
  url "https://github.com/maxbolgarin/gitbasher/releases/download/v5.5.0/gitb"
  sha256 "b0a8ba06ae2ac163f16ff9cb93ff133aef6064ed"
  license "MIT"

  depends_on "git"

  def install
    bin.install "gitb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitb --version")
  end
end
