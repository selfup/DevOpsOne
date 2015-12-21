require 'pry'

class CreateDB
	def target_directory
    if ARGV[0]
			ARGV[0]
		else
			`pwd`
		end
  end

	def find_app_name
		t_dir = target_directory
		app_name = t_dir.split("/")
		dbyml_app_name = app_name.last.gsub("\n", "")
	end

	def new_yml
  "default: &default\n
	adapter: postgresql
	encoding: unicode
	pool: 5\n
	host: 127.0.0.1
	username: #{find_app_name}
	password: <%= ENV['#{find_app_name.upcase}_JS_DATABASE_PASSWORD'] %>\n
development:
	<<: *default
	database: #{find_app_name}_development
	username: #{find_app_name}
	password: <%= ENV[''#{find_app_name.upcase}_JS_DATABASE_PASSWORD'] %>\n
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
		`cd #{target_directory}`
		`rm -rf config/database.yml`
		`cd #{target_directory}`
		`echo "#{new_yml}" >> config/database.yml`
	end
end

h = CreateDB.new
p h.find_app_name
h.replace_file
