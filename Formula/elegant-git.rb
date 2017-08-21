class ElegantGit < Formula
  desc 'Allows easy handle git tasks.'
  homepage 'https://github.com/extsoft/elegant-git'
  url 'https://github.com/extsoft/elegant-git.git', :tag => '0.1.0', :revision => 'fe976a69bd566af9844bc77f7cff76f105da6b9e'
  head 'https://github.com/extsoft/elegant-git.git'

  bottle :unneeded
  depends_on "git"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"src/main/git-elegant"
    bash_completion.install libexec/"src/main/git-elegant-completion" => "git-elegant"
  end

  test do
    system "git", "elegant commands"
  end
end
