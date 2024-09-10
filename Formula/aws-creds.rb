class AwsCreds < Formula
  desc "Painless CLI authentication using various AWS identities"
  homepage "https://github.com/bees-hive/aws-creds"
  url "https://github.com/bees-hive/aws-creds.git", tag: "0.8.0", revision: "af9d2269acce870b2e9bd14f93e168dd177476c9"
  head "https://github.com/bees-hive/aws-creds.git", branch: "main"

  def install
    bin.install "aws-creds.py" => "aws-creds"
  end

  test do
    system "#{bin}/aws-creds", "--help"
  end
end
