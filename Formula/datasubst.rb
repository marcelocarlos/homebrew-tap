class Datasubst < Formula
  desc 'A simple go template based tool based that uses structured data such as JSON and YAML as data sources.'
  homepage 'https://github.com/marcelocarlos/datasubst'
  version '0.4.0'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.4.0/datasubst-v0.4.0-darwin-amd64.tar.gz'
    sha256 '0938d85139ef1a65c28906e53722fa0b63b2d71742774140ec1ed7ae4d6c6896'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.4.0/datasubst-v0.4.0-darwin-arm64.tar.gz'
    sha256 'c85f5c11b26bb47dff34038658f16afbeec160a97a2616ad5f8ef29260db265d'
  end
  if OS.linux? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.4.0/datasubst-v0.4.0-linux-amd64.tar.gz'
    sha256 'a719ceac805f86107a8d98cdeb091236169ceeca96877eda6c306919c1eddd24'
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.4.0/datasubst-v0.4.0-linux-arm.tar.gz'
    sha256 '196e0bc76bd3b7755c07b4117c4a4ba6ca1eeaa84bf2a5a0dfc99e2ede38541c'
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.4.0/datasubst-v0.4.0-linux-arm64.tar.gz'
    sha256 'f0883d0bd9298ea8f786f0bc28c160667754f2ac41ef5d72311b9afe6cb2bee5'
  end

  def install
    bin.install 'datasubst'
    prefix.install_metafiles
  end

  test do
    system "#{bin}/datasubst --version"
  end
end
