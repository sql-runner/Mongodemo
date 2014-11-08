require "mongo_mapper"

config_file = "#{Rails.root}/config/mongodb.yml"

if File.exist? config_file
  config = YAML.load(File.read(config_file))[Rails.env]
  if config
    MongoMapper.connection = Mongo::Connection.new(config["server"], config["port"] || 27017)
    MongoMapper.database = config["database"]
  end
end
