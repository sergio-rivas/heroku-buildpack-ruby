require 'json'

class LanguagePack::Helpers::Nodebin
  def self.hardcoded_node_lts
    version = "10.15.3"
    {
      "number" => version,
      "url"    => "https://tuitu-buildpack.oss-cn-hangzhou.aliyuncs.com/node-v#{version}-linux-x64.tar.gz"
    }
  end

  def self.hardcoded_yarn
    version = "1.16.0"
    {
      "number" => version,
      "url"    => "https://tuitu-buildpack.oss-cn-hangzhou.aliyuncs.com/yarn-v#{version}.tar.gz"
    }
  end

  def self.node_lts
    hacky_signature
    hardcoded_node_lts
  end

  def self.yarn
    hardcoded_yarn
  end

  def self.hacky_signature
    puts '              ____________________'
    puts '       __    /  I\'m a Dinosaur!  |'
    puts '      /oo\\  | & This is a Tuitu  |'
    puts '     |    | <____  Buildpack Mod |'
    puts ' ^^  (vvvv)   ^^ \\______________/'
    puts ' \\\\  /\__/\  //'
    puts '  \\\\/      \//'
    puts '   /        \        '
    puts '  |          |    ^  '
    puts '  /          \___/ | '
    puts ' (            )    |'
    puts '  \----------/    /'
    puts '   //     \\\\_____/'
    puts '   W       W'
  end
end
