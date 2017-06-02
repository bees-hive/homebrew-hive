class Pem < Formula
  desc "This tool allows you to easily manage Python's environment."
  homepage "https://github.com/extsoft/pem"
  url "https://github.com/extsoft/pem.git", :tag => "0.2.0", :revision => "70a189cd3ac4d7e30dd236def58ad6f92db77609"
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
