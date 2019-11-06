class ElegantGit < Formula
  desc "Elegant Git is a tool who carefully makes routine work with Git"
  homepage "https://elegant-git.bees-hive.org"
  url "https://github.com/bees-hive/elegant-git.git", :tag => "0.14.0", :revision => "1545b2c060ef07ce784411b497883c1dbcd96044"
  version_scheme 3
  head "https://github.com/bees-hive/elegant-git.git"

  bottle :unneeded
  depends_on "bash-completion"

  def install
    system "./install.bash", prefix, "src"
    bash_completion.install "completions/git-elegant.bash" => "git-elegant"
  end

  def caveats; <<~EOF
    Please configure Elegant Git by running

        git-elegant acquire-git

    If this step is not completed, Elegant Git may behave unexpectedly
    since the desired Git configuration (relevant for the current version)
    is not applied.
  EOF
  end

  test do
    assert_match "init-repository", shell_output("#{bin}/git-elegant commands")
  end
end
