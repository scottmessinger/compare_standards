class Maryland
  include MongoMapper::Document
  
  key :standard_number, String #this is the label used by educators to describe the standard. e.g. 3.A.1.c
  key :grade , Integer 
  key :level_0, Array #standard
  key :level_1, Array #topic
  key :level_2, Array #indicator
  key :level_3, Array #objective
  key :level_4, Array #assessment limit
  
  key :related_core_ids, Array 
  key :perfect_alignment, Boolean #1 = true, 0=false
  key :common_core_alignment_note, String
  
  
  many :common_cores, :in => :related_core_ids
end