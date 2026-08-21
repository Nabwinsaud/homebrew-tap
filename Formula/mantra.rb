class Mantra < Formula
  desc "Keyboard-first PostgreSQL terminal IDE"
  homepage "https://github.com/Nabwinsaud/mantra"
  url "https://github.com/Nabwinsaud/mantra/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e0cc75e2701e8a97a8a238930d51b12f181959e9026527ed150ea9b16e41e75c"
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
