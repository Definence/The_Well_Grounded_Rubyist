puts



require 'fileutils'

# creating sample
File.new("sample.rb", "w")

# will make a copy of a sample with sample2 name
FileUtils.cp("sample.rb", "sample(2).rb")

# making a dir
FileUtils.mkdir("backup") unless Dir.exists?('backup')

# will copy sample's files to backup folder
FileUtils.cp(['sample.rb', 'sample(2).rb'], 'backup/')

# to verify presense of the copied files
p Dir["backup/sample.rb", "backup/sample(2).rb"]

# creating a file to avoid an error with no file exist
File.new("test.txt", "w")

# moving a file to backup folder
FileUtils.mv("test.txt", "backup")
p Dir["backup/*"]

# will remove test file
p "Test file exists? #{File.exist?("backup/test.txt")}"
FileUtils.rm("./backup/test.txt") if File.exist?("backup/test.txt")
p "Test file exists? #{File.exist?("backup/test.txt")}"

# will delete sample files in the main path
FileUtils.rm("sample.rb")
FileUtils.rm("sample(2).rb")
p "Sample files exist? #{File.exist?("sample.rb") && File.exist?("sample(2).rb")}"

# will remove backup folder
FileUtils.rm_rf("backup")
p "Backup folder exists? #{File.exist?("backup")}"



puts