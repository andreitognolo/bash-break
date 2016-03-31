lib = '/opt/local/gnocci/bundle/ruby/2.2.0/gems/bash-session-0.0.2/lib/'
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
