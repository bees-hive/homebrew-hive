class Pem < Formula
  desc "This tool allows you to easily manage Python's environment"
  homepage "https://github.com/extsoft/pem"
  url "https://github.com/extsoft/pem.git", tag: "1.0.0", revisioni: "044bffa1d8f3199401ff36781374106cea8144b7"
  head "main"

  depends_on "pyenv-virtualenv"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/pem"
    bash_completion.install libexec/"bin/pem-completion" => "pem"
  end

  test do
    system "#{bin}/pem", "display-dir-venv"
  end
end
