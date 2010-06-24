class CommonCore
  include MongoMapper::Document
  
  key :grade, Integer
  key :standard_number, String
  key :level_0, Array
  key :level_1, Array
  key :level_2, Array
  key :level_3_array, Array
  
  # many :marylands

end