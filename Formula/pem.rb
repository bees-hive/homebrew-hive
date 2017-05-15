class Pem < Formula
  desc "This tool allows you to easily manage Python's environment."
  homepage "https://github.com/extsoft/pem"
  url "https://github.com/extsoft/pem.git", :tag => "0.1.0", :revision => "f3938b9aeadc13a9479d2142a97a91029675cb8a"
  head "https://github.com/extsoft/pem.git"

  bottle :unneeded
  depends_on "pyenv-virtualenv"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/pem"
    bash_completion.install libexec/"bin/pem-completion" => "pem"
  end

  test do
    system "#{bin}/pem", "folder-state"
  end
end
