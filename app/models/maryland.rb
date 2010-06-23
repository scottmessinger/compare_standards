class Maryland
  include MongoMapper::Document
  
  key :standard_number, String #this is the label used by educators to describe the standard. e.g. 3.A.1.c
  key :grade, Integer 
  key :level_0, String #standard
  key :level_1, String #topic
  key :level_2, String #indicator
  key :level_3, String #objective
  key :level_4, String #assessment limit
  
  key :related_cc_array, Array
  
  key :perfect_alignment, Boolean #1 = true, 0=false
  key :common_core_alignment_note, String
  
  # many :common_cores, :in => :related_cc_array
end