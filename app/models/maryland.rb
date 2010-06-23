class Maryland
  include MongoMapper::Document
  
  key :type, String
  key :label, String
  key :standard, String
  key :topic, String
  key :indicator, String
  key :objective, String
  key :assessment_limit, String
  
  key :related_cc_array, Array
  
  key :perfect_alignment, Boolean #1 = true, 0=false
  key :common_core_alignment_note, String
  
  # many :common_cores, :in => :related_cc_array
end