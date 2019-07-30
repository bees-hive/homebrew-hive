class ElegantGit < Formula
  desc "Elegant Git is a tool who carefully makes routine work with Git"
  homepage "https://elegant-git.bees-hive.org"
  url "https://github.com/bees-hive/elegant-git.git", :tag => "0.4.2", :revision => "f2338a4fe245437cc7c4875ef616a69d5aa2d9a4"
  version_scheme 2
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
