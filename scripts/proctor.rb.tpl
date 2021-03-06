class Proctor < Formula
  desc "Proctor CLI"
  homepage "https://github.com/gojektech/proctor"
  url "https://github.com/gojektech/proctor/releases/download/v{{ .Tag }}/proctor_{{ .Tag }}_Darwin_x86_64.tar.gz"
  sha256 "{{ .SHA }}"
  head "https://github.com/gojektech/proctor.git"

  def install
    bin.install "proctor"
  end

  test do
    system "#{bin}/proctor", "--help"
  end
end
