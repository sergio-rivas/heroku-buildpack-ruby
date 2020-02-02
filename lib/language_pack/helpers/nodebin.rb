require 'json'

class LanguagePack::Helpers::Nodebin
  def self.hardcoded_node_lts
    version = "10.15.3"
    {
      "number" => version,
      "url"    => "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-linux-x64.tar.gz"
    }
  end

  def self.hardcoded_yarn
    version = "1.16.0"
    {
      "number" => version,
      "url"    => "https://registry.npm.taobao.org/yarn/download/yarn-#{version}.tgz"
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
    puts '..............___________________'
    puts '.......__    /  I am a Dinosaur! |'
    puts '....../oo\\  | & This is a Tuitu  |'
    puts '.....|    | <____  Buildpack Mod |'
    puts '.^^  (vvvv)   ^^ \\______________/'
    puts '.\\\\  /\__/\  //'
    puts '..\\\\/      \//'
    puts '.../        \        '
    puts '..|          |    ^  '
    puts '../          \___/ | '
    puts '.(            )    |'
    puts '..\----------/    /'
    puts '...//     \\\\_____/'
    puts '...W       W'
  end
end
