class ElegantGit < Formula
  desc "Elegant Git is a tool who carefully makes routine work with Git"
  homepage "https://elegant-git.bees-hive.org"
  url "https://github.com/bees-hive/elegant-git.git", :tag => "0.13.0", :revision => "8f5852104c95c8c49be3465ade247cf24987f53a"
  version_scheme 3
  head "https://github.com/bees-hive/elegant-git.git"

  bottle :unneeded
  depends_on "bash-completion"

  def install
    system "./install.bash", prefix, "src"
    bash_completion.install "completions/git-elegant.bash" => "git-elegant"
  end

  def caveats; <<~EOF
    The final step after Elegant Git installation is to run
        git elegant acquire-repository
    for each git repository where Elegant Git is going to be used.

    If this step is not completed, Elegant Git may behave unexpectedly
    since the desired Git configuration (relevant for the current version)
    is not applied.
  EOF
  end

  test do
    assert_match "init-repository", shell_output("#{bin}/git-elegant commands")
  end
end
