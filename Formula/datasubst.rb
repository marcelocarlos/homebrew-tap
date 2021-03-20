class Datasubst < Formula
  desc 'A simple go template based tool based that uses structured data such as JSON and YAML as data sources.'
  homepage 'https://github.com/marcelocarlos/datasubst'
  version '0.2.1'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-darwin-amd64.tar.gz'
    sha256 '8108f2ad47b7681245af6a88184932caf751b5fa6ccea4bb7dd224fe21041671'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-darwin-arm64.tar.gz'
    sha256 'e1125d644978a0b5f871da0fef3b5655b06d0f0e7dd38c7695272d6ade57e1b3'
  end
  if OS.linux? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-linux-amd64.tar.gz'
    sha256 '6002004e3c17ca092034c9b7de650b8d396e4a5e5e8f15d4cb8feff61854a31e'
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-linux-arm.tar.gz'
    sha256 '338e6f7aff6277b6e85cd19be6a31b02fc633ec35b1915aaea282f78125ccd6c'
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.2.1/datasubst-v0.2.1-linux-arm64.tar.gz'
    sha256 '50772906f26bee181ef72d595d224a1a2c6117d881e78d4cd3915672e85e13bb'
  end

  def install
    bin.install 'datasubst'
    prefix.install_metafiles
  end

  test do
    system "#{bin}/datasubst --version"
  end
end
