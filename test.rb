lib = '/Users/atognolo/projs/snap/bash-session/lib'
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bash/session.rb'

@shell = Bash::Session.new

def execute(cmd)
    puts "COMMAND=#{cmd}"
    @shell.execute(cmd) {|data| puts data}
end

execute('npm install')
execute('bower install')
execute('grunt init')
execute('echo foo')
