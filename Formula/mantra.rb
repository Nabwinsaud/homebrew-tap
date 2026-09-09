class Mantra < Formula
  desc "Keyboard-first PostgreSQL terminal IDE"
  homepage "https://github.com/Nabwinsaud/mantra"
  url "https://github.com/Nabwinsaud/mantra/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ed461285528f815ca3e9f54db8e5d05805aee7df7774c0aaee955cc45273aefd"
  license "MIT"
  head "https://github.com/Nabwinsaud/mantra.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "mantra #{version}", shell_output("#{bin}/mantra --version")
  end
end
