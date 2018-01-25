class ElegantGit < Formula
  desc "Allows easy handle git tasks"
  homepage "https://github.com/extsoft/elegant-git"
  url "https://github.com/extsoft/elegant-git.git", :tag => "0.2.0", :revision => "d6af6a3faaa6d3d4a5e33344c521813f345f3cc1"
  version_scheme 1
  head "https://github.com/extsoft/elegant-git.git"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"src/main/git-elegant"
    bash_completion.install libexec/"src/main/git-elegant-completion" => "git-elegant"
  end

  test do
    system "which", "git-elegant"
  end
end