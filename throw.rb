# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Throw < Formula
  desc "Example throw app"
  homepage "https://github.com/shifaz/homebrew-taps"
  url "http://brew.dc.mv/releases/throw-1.0.tar.gz", :using => :curl
  sha256 "1a0bd95782dd58aa4ac656e1d1ad0b169dfae9ad664bc71b36a020b9c15cf4dd"
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