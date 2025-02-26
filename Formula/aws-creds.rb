class AwsCreds < Formula
  desc "Painless CLI authentication using various AWS identities"
  homepage "https://github.com/bees-hive/aws-creds"
  url "https://github.com/bees-hive/aws-creds.git", tag: "0.9.0", revision: "de9ddb8af8c6f623ba36f4da1463bdde272ac544"
  head "https://github.com/bees-hive/aws-creds.git", branch: "main"

  def install
    bin.install "aws-creds.py" => "aws-creds"
  end

  test do
    system "#{bin}/aws-creds", "--help"
  end
end
