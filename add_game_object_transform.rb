require 'yaml'

# 未完成のスクリプトです。

def main
  file = File.open(get_path, 'r')
  str = file.read.to_s
  file.close
  puts str
  yaml = YAML.load_stream str do |line|
    puts line
  end
  puts yaml
end

def get_path
  yaml = YAML.load_file "./values.yml"
  yaml["values"]["scene_file_path"]
end

main
