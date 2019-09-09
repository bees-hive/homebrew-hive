class ElegantGit < Formula
  desc "Elegant Git is a tool who carefully makes routine work with Git"
  homepage "https://elegant-git.bees-hive.org"
  url "https://github.com/bees-hive/elegant-git.git", :tag => "0.5.0", :revision => "adc329b7a324d5c8a819198a8692e20104f006e3"
  version_scheme 3
  head "https://github.com/bees-hive/elegant-git.git"

  bottle :unneeded

  def install
    system "./install.bash", prefix, "src"
    bash_completion.install "completions/git-elegant.bash" => "git-elegant"
  end

  test do
    assert_match "init-repository", shell_output("#{bin}/git-elegant commands")
  end
end
