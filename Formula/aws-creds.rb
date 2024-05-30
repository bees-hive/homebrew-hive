class AwsCreds < Formula
  desc "Painless CLI authentication using various AWS identities"
  homepage "https://github.com/bees-hive/aws-creds"
  url "https://github.com/bees-hive/aws-creds.git", tag: "0.6.0", revision: "6360d6823ec25ce53722554d5f3f3e4869c6f45f"
  head "https://github.com/bees-hive/aws-creds.git", branch: "main"

  def install
    bin.install "aws-creds.py" => "aws-creds"
  end

  test do
    system "#{bin}/aws-creds", "--help"
  end
end
