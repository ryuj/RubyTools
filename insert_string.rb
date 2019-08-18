
def main
  str = <<'STR'
aaaaa
bbbbb
ccccc
ddddd
eeeee
STR

  result = ""
  str.split("\n").each do |line|
    if line == "bbbbb"
      add_string result, "BBBBB"
    end
    add_string result, line
  end

  puts result
end

def add_string(base, string)
  base << string
  base << "\n"
end

main
