class Yasi < MongoBase

  key :title, String, required: true
  key :category, String
  key :description, String

  validates_presence_of :description

end
