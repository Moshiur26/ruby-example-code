$:.each { |d| puts d }

# $:.push '/your/directory/here'
# require 'yourfile'

$debug_mode = 0
require_relative $debug_mode == 0 ? "normal-classes" : "debug-classes"

%w{file1 file2 file3 file4 file5}.each { |l| require l }