require 'pry'

class CreateDB
	
	def intialize
	end

	def find_app_name
		pwd = `pwd`
		app_name = pwd.split("/")
		dbyml_app_name = app_name.last.gsub("\n", "")
	end

	def file
		File.read("./config/database.yml")
	end

end

h = CreateDB.new
puts h.find_app_name
puts h.file
