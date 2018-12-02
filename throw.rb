# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Throw < Formula
  desc "Example throw app"
  homepage "https://github.com/shifaz/homebrew-taps"
  url "http://brew.dc.mv/releases/throw-1.0.tar.gz", :using => :curl
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  version "1.0"
  # depends_on "cmake" => :build

  def install
    # install hworld script, create symlink to script in /usr/local/bin
    bin.install "throw"
  end

  test do
    # test script output
    assert_equal %x('#{bin}/throw'), "Throw world!\n"
  end

end