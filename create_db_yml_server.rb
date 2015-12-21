require 'pry'

class CreateDB
	def target_directory
    	  `pwd`
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
	host: localhost
	username: #{find_app_name}
	password: <%= ENV['#{find_app_name.upcase}_DATABASE_PASSWORD'] %>\n
development:
	<<: *default
	database: #{find_app_name}_development
	username: #{find_app_name}
	password: <%= ENV[''#{find_app_name.upcase}_DATABASE_PASSWORD'] %>\n
test:
	<<: *default
	database: #{find_app_name}_test
	username: #{find_app_name}
	password: <%= ENV['#{find_app_name.upcase}_DATABASE_PASSWORD'] %>\n
production:
	<<: *default
	database: #{find_app_name}_production
	username: #{find_app_name}
	password: <%= ENV['#{find_app_name.upcase}_DATABASE_PASSWORD'] %>"
	end

	def rbenv_vars
		"#{find_app_name.upcase}_DATABASE_USERNAME=#{find_app_name}"
		"#{find_app_name.upcase}_DATABASE_PASSWORD=#{ARGV[0]}"
	end

	def replace_file
		`cd #{target_directory}`
		`rm -rf config/database.yml`
		`cd #{target_directory}`
		`echo "#{new_yml}" >> config/database.yml`
		`cd #{target_directory}`
		`echo "#{rbenv_vars}" >> .rbenv-vars`
	end
end

h = CreateDB.new
p h.find_app_name
h.replace_file
