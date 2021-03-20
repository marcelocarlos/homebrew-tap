class Datasubst < Formula
  desc 'A simple go template based tool based that uses structured data such as JSON and YAML as data sources.'
  homepage 'https://github.com/marcelocarlos/datasubst'
  version '0.2.1'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-darwin-amd64.tar.gz'
    sha256 'a0c68f7ef8875d9be62b545bdc1478a51df5922c3fac25db440cd230342a0331'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-darwin-arm64.tar.gz'
    sha256 '95309fdf74fcc1dc6b5cd42b083722c4c227f66731737eeb94b9f1b14731979a'
  end
  if OS.linux? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-linux-amd64.tar.gz'
    sha256 'e0dbf313e683bb3ffdeb524babd1dc0aa94b29a5cd7bc61f590c805e93f4d67a'
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-linux-arm.tar.gz'
    sha256 'af9865fb008a9c0f0dc20dc24b7d9b15fec33795de8b90bb8933f93ebae4beda'
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-linux-arm64.tar.gz'
    sha256 '92ab13f5fc4bb452e9b13bb1d6e7fe6704714b07febc679b15fe27de2c4dc27e'
  end

  def install
    bin.install 'datasubst'
    prefix.install_metafiles
  end

  test do
    system "#{bin}/datasubst --version"
  end
end
