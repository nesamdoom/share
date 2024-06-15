def rando
    e = (rand(100)+rand(100)+1) / (rand(5)+rand(5)+1)
#    puts e
    f = (rand(5)+rand(1000)+1) % (rand(55)+rand(55)+1)
#    puts f
    @g = e**f
end
rando

def gen
# making a string replacing numbers with letters
    def big
        reps = {
            '11' => 'l', '12' => 'g', '13' => 'r', '14' => 'q', '15' => 'f',
            '16' => 'b', '17' => 'w', '18' => 'p','19' => 'u', '10' => 'x',
            '00' => 'c', '21' => 'h', '20' => 'j', '31' => 't', '35' => 'v',
            '22' => 'M', '33' => 'y', '44' => 'A', '55' => 'L', '66' => 'D',
            '77' => 'W', '88' => 'O', '99' => 'Z', '85' => 'N', '50' => 'E',
            '1' => 'z', '2' => 'k', '3' => 'n', '4' => 'm', '5' => 'o',
            '6' => 's', '7' => 'e', '8' => 'a', '9' => 'i', '0' => 'd'
        }
        @bgz = @g.to_s
        @bgz.gsub!(Regexp.union(reps.keys), reps)
        reeps = {
            '11' => ',', '12' => '(', '13' => '!', '14' => '=', '15' => '-',
            '16' => '+', '17' => '^', '18' => '}', '19' => '_', '10' => '|',
            '00' => '>', '21' => '\'', '20' => '@', '31' => '\\', '35' => '%',
            '22' => '`', '33' => ')', '44' => '{', '55' => '\;', '66' => 'R',
            '77' => 'V', '88' => 'P', '99' => 'X', '85' => 'K', '50' => 'T',
            '1' => '/', '2' => ':', '3' => '#', '4' => '$', '5' => '*',
            '6' => '[', '7' => '?', '8' => '.', '9' => '~', '0' => '<'
        }
        @bngz = @g.to_s
        @bngz.gsub!(Regexp.union(reeps.keys), reeps)
    end
    big
end

# be sure
def sure
    p = @g.to_s
    o = p.length
# make sure the password is a good length
    until o.between?(10,35) do
        rando
        p = @g.to_s
        o = p.length
        gen
    end
    gen
end
sure

def try
    puts "#{@g} Seed"
    puts "#{@g.to_s.length} characters"
    puts "Password:"
d = @bngz.chars
e = @bgz.chars.reverse
f = @g.to_s.chars
num = 0
# combines the strings
times = "#{@bgz}".length
    times.times do
        print d[num]
        print e[num]
        print f[num]
        num = num + 1
    end
end
try
