#1.
lines = readlines
puts lines.length

#command to run : ruby 1.rb < data.txt


#File Mode - Properties of the I/O Stream
# r Read-only. The file pointer is placed at the start of the file.
# r+ Both reading and writing are allowed. The file pointer is placed at the start of the file.
# w Write-only. A new file is created (or an old one overwritten as if new).
# w+ Both reading and writing are allowed, but File.new creates a new file from scratch (or
# overwrites an old one as if new).
# a Write (in append mode). The file pointer is placed at the end of the file and writes will make
# the file longer.
# a+ Both reading and writing are allowed (in append mode). The file pointer is placed at the end
# of the file and writes will make the file longer.
# b Binary file mode. You can use it in conjunction with any of the other modes listed.