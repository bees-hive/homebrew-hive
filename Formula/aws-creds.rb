class AwsCreds < Formula
  desc "Painless CLI authentication using various AWS identities"
  homepage "https://github.com/bees-hive/aws-creds"
  url "https://github.com/bees-hive/aws-creds.git", tag: "0.10.1", revision: "3506c97941dd422f375a8350196b871667653eee"
  head "https://github.com/bees-hive/aws-creds.git", branch: "main"

  def install
    bin.install "aws-creds.py" => "aws-creds"
  end

  test do
    system "#{bin}/aws-creds", "--help"
  end
end
