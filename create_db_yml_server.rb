require 'pry'

class CreateDB
	def intialize
	end

	def find_app_name
		pwd = `pwd`
		app_name = pwd.split("/")
		dbyml_app_name = app_name.last.gsub("\n", "")
	end

	def default
		"default: &default\n"
	end

	def new_yml
	"adapter: postgresql
	encoding: unicode
	pool: 5\n
	host: localhost
	username: #{find_app_name}
	password: <%= ENV['#{find_app_name.upcase}_JS_DATABASE_PASSWORD'] %>\n
development:
	<<: *default
	database: #{find_app_name}_development
	username: #{find_app_name}
	password: <%= ENV['#{find_app_name.upcase}_JS_DATABASE_PASSWORD'] %>\n
test:
	<<: *default
	database: #{find_app_name}_test
	username: #{find_app_name}
	password: <%= ENV['#{find_app_name.upcase}_JS_DATABASE_PASSWORD'] %>\n
production:
	<<: *default
	database: #{find_app_name}_production
	username: #{find_app_name}
	password: <%= ENV['#{find_app_name.upcase}_JS_DATABASE_PASSWORD'] %>"
	end

	def replace_file
		`rm -rf config/database.yml`
		`echo "#{default}" >> config/database.yml`
		`echo "#{new_yml}" >> config/database.yml`
	end
end

h = CreateDB.new
p h.find_app_name
h.replace_file
