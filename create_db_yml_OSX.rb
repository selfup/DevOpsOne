require 'pry'

class CreateDB

  def initialize
    @sec  ||= secret
    @vars ||= rbenv_vars
  end

  def target_directory
    `pwd`
  end

  def find_app_name
    t_dir = target_directory
    app_name = t_dir.split("/")
    dbyml_app_name = app_name.last.gsub("\n", "")
    dbyml_app_name = dbyml_app_name.gsub("-", "")
  end

  def new_yml
  "default: &default\n
  adapter: postgresql
  encoding: unicode
  pool: 5\n

development:
  <<: *default
  database: #{find_app_name}_development

test:
  <<: *default
  database: #{find_app_name}_test

production:
  <<: *default
  database: #{find_app_name}_production
  password: <%= ENV['#{find_app_name.upcase}_DATABASE_PASSWORD'] %>"
  end

  def secret
    `rake secret`
  end

  def rbenv_vars
    "SECRET_KEY_BASE=#{@sec}
#{find_app_name.upcase}_DATABASE_PASSWORD=#{ARGV[0]}"
  end

  def replace_file
    `cd #{target_directory}`
    `rm -rf config/database.yml`
    `cd #{target_directory}`
    `echo "#{new_yml}" >> config/database.yml`
    `cd #{target_directory}`
    `echo "#{@vars}" >> .rbenv-vars`
  end

  def do_it_all
    replace_file
    puts "#{find_app_name}"
  end
end

h = CreateDB.new
h.do_it_all
