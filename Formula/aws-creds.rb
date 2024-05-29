class AwsCreds < Formula
  desc "Painless CLI authentication using various AWS identities"
  homepage "https://github.com/bees-hive/aws-creds"
  url "https://github.com/bees-hive/aws-creds.git", tag: "0.5.0", revision: "86be05da3321dfeaf1d292df69b4ffc90fb53816"
  head "https://github.com/bees-hive/aws-creds.git", branch: "main"

  def install
    bin.install "aws-creds.py" => "aws-creds"
  end

  test do
    system "#{bin}/aws-creds", "--help"
  end
end
