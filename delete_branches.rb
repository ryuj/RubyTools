def main
    ignore = ["develop"]

    branches = `git branch`
    branches.lines do |line|
        branch = line.strip
        next if branch.start_with? "*"
        next if ignore.include? branch
        puts `git branch -d #{branch}`
    end

end

main
