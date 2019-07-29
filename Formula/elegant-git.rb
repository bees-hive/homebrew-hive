class ElegantGit < Formula
  desc "Elegant Git is a tool who carefully makes routine work with Git"
  homepage "https://elegant-git.bees-hive.org"
  url "https://github.com/bees-hive/elegant-git.git", :tag => "0.4.1", :revision => "8893d89a616f95d378cbe5686b8a5ba73bac01fb"
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
