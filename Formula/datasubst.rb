class Datasubst < Formula
  desc 'A simple go template based tool based that uses structured data such as JSON and YAML as data sources.'
  homepage 'https://github.com/marcelocarlos/datasubst'
  version 'v0.0.0'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/vv0.0.0/datasubst-vv0.0.0-darwin-amd64.tar.gz'
    sha256 'aaaaaa-sha256_darwin_amd64'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/vv0.0.0/datasubst-vv0.0.0-darwin-arm64.tar.gz'
    sha256 'aaaaaa-sha256_darwin_arm64'
  end
  if OS.linux? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/vv0.0.0/datasubst-vv0.0.0-linux-amd64.tar.gz'
    sha256 'aaaaaa-sha256_linux_amd64'
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/vv0.0.0/datasubst-vv0.0.0-linux-arm.tar.gz'
    sha256 'aaaaaa-sha256_linux_arm'
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/vv0.0.0/datasubst-vv0.0.0-linux-arm64.tar.gz'
    sha256 'aaaaaa-sha256_linux_arm64'
  end

  def install
    bin.install 'datasubst'
    prefix.install_metafiles
  end

  test do
    system "#{bin}/datasubst --version"
  end
end
