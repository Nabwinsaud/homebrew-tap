class Mantra < Formula
  desc "Keyboard-first PostgreSQL terminal IDE"
  homepage "https://github.com/Nabwinsaud/mantra"
  url "https://github.com/Nabwinsaud/mantra/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "c3a9ca7ca3291492ee559e6447a9ed55e98af3525c877b3b8223bb5434dd51c2"
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
