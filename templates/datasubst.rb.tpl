class Datasubst < Formula
  desc 'A simple go template based tool based that uses structured data such as JSON and YAML as data sources.'
  homepage 'https://github.com/marcelocarlos/datasubst'
  version '__VERSION__'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v__VERSION__/datasubst-v__VERSION__-darwin-amd64.tar.gz'
    sha256 '__SHA256_DARWIN_AMD64__'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v__VERSION__/datasubst-v__VERSION__-darwin-arm64.tar.gz'
    sha256 '__SHA256_DARWIN_ARM64__'
  end
  if OS.linux? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v__VERSION__/datasubst-v__VERSION__-linux-amd64.tar.gz'
    sha256 '__SHA256_LINUX_AMD64__'
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v__VERSION__/datasubst-v__VERSION__-linux-arm.tar.gz'
    sha256 '__SHA256_LINUX_ARM__'
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v__VERSION__/datasubst-v__VERSION__-linux-arm64.tar.gz'
    sha256 '__SHA256_LINUX_ARM64__'
  end

  def install
    bin.install 'datasubst'
    prefix.install_metafiles
  end

  test do
    system "#{bin}/datasubst --version"
  end
end
