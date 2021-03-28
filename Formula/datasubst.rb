class Datasubst < Formula
  desc 'A simple go template based tool based that uses structured data such as JSON and YAML as data sources.'
  homepage 'https://github.com/marcelocarlos/datasubst'
  version '0.3.0'

  if OS.mac? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.3.0/datasubst-v0.3.0-darwin-amd64.tar.gz'
    sha256 '6651221b696df444cf3cf67ba5153a80faf8ca0d4d28a6e8696cfbc2123edd88'
  end
  if OS.mac? && Hardware::CPU.arm?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.3.0/datasubst-v0.3.0-darwin-arm64.tar.gz'
    sha256 '72c7a128555fb5dbc07bc60e63b96988f6396456d3fd2ac09f8e9eddbd618b04'
  end
  if OS.linux? && Hardware::CPU.intel?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.3.0/datasubst-v0.3.0-linux-amd64.tar.gz'
    sha256 '56fada7032203f2bfe2a26bf1b19e22f1035d90d4356be4f5567b659762b9945'
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.3.0/datasubst-v0.3.0-linux-arm.tar.gz'
    sha256 '68522925c1f96443589e104c105a19b7b8462f8306f4ab49216bcb74ea24e467'
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url 'https://github.com/marcelocarlos/datasubst/releases/download/v0.3.0/datasubst-v0.3.0-linux-arm64.tar.gz'
    sha256 '08074e7727b19c5834a8f9d477af13447c87d6230816075c29b69fde1f77eea8'
  end

  def install
    bin.install 'datasubst'
    prefix.install_metafiles
  end

  test do
    system "#{bin}/datasubst --version"
  end
end
