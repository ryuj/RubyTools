
def main(inputs)
    if inputs.length != 1
        puts "args error"
        exit
    end

    lat = "139"
    lon = "038"
    dir = "osm_#{lat}_#{lon}"

    if inputs[0] == "0"
        exe "ls -lh Tohoku/#{dir} | sort -k5 -h | tail -n3"
        exe "ls -lh RetryOsm/#{dir} | sort -k5 -h | tail -n3"
    elsif inputs[0] == "1"
        exe "rm -rf Tohoku/#{dir}"
        exe "mkdir Tohoku/#{dir}"
        exe "cp -r RetryOsm/#{dir} Tohoku/#{dir}"
        exe "ls -lh Tohoku/#{dir} | sort -k5 -h | tail -n3"
    end
end

def exe(cmd)
    puts "-" * 50
    puts "cmd:" + cmd
    # system cmd
    puts "-" * 50
end

main ARGV
