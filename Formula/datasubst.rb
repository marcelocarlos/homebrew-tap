class Datasubst < Formula
  desc 'A simple go template based tool based that uses structured data such as JSON and YAML as data sources.'
  homepage 'https://github.com/marcelocarlos/datasubst'
  version '0.3.1'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.3.1/datasubst-v0.3.1-darwin-amd64.tar.gz'
    sha256 '31145cd0af08a30494a909daaf99b2a3c9c176a76a02a019e9d06584d202aa0b'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.3.1/datasubst-v0.3.1-darwin-arm64.tar.gz'
    sha256 '2d5213140d1e7dd4258ea0c93e0660f830a6ad84b37cb0c5c5920792b874893b'
  end
  if OS.linux? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.3.1/datasubst-v0.3.1-linux-amd64.tar.gz'
    sha256 '9ca8a7f12a65ef7b1609e33cd9837e2a5ffc976f98731b43176094f54ba3a824'
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.3.1/datasubst-v0.3.1-linux-arm.tar.gz'
    sha256 '380c834b351fc2c8235018b5285cfa8dd439bf45f2202b781d3c214c34ee59ce'
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.3.1/datasubst-v0.3.1-linux-arm64.tar.gz'
    sha256 '4d72decce1db3d18815ae562683e0fe1baa1da8633150fbfb039df95f7ccf4eb'
  end

  def install
    bin.install 'datasubst'
    prefix.install_metafiles
  end

  test do
    system "#{bin}/datasubst --version"
  end
end
