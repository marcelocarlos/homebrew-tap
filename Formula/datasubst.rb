class Datasubst < Formula
  desc 'A simple go template based tool based that uses structured data such as JSON and YAML as data sources.'
  homepage 'https://github.com/marcelocarlos/datasubst'
  version '0.7.0'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.7.0/datasubst-v0.7.0-darwin-amd64.tar.gz'
    sha256 'd72a6647f9a154b398d845ae2808b3b9a417af45c4a411205ae572cc74bd9000'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.7.0/datasubst-v0.7.0-darwin-arm64.tar.gz'
    sha256 'ed4b86ee3ba22719188ecbc0eefe5ea5b2733c4bbad7432afaa9dfaacade136e'
  end
  if OS.linux? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.7.0/datasubst-v0.7.0-linux-amd64.tar.gz'
    sha256 'b6b983d8945e6e212b0f0b2dafbe942b5fdc08464276d1b906031709e074179a'
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.7.0/datasubst-v0.7.0-linux-arm.tar.gz'
    sha256 'edf73fc69d3793ca4838ce4221bd06e2c9e3bfcc1779b5df702d00067dcc87e5'
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.7.0/datasubst-v0.7.0-linux-arm64.tar.gz'
    sha256 'c24f8514bf18f4b2527b09eeb6b8f37cb5cc50169ed992c4813bd0c666e35a42'
  end

  def install
    bin.install 'datasubst'
    prefix.install_metafiles
  end

  test do
    system "#{bin}/datasubst --version"
  end
end
