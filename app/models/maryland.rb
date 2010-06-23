class Maryland
  include MongoMapper::Document
  
  key :TYPE, String
  key :LABEL, String
  key :STANDARD, String
  key :TOPIC, String
  key :INDICATOR, String
  key :OBJECTIVE, String
  key :ASSESSMENT_LIMIT, String
  
  key :related_cc_array, Array
  
  key :perfect_alignment, Boolean #1 = true, 0=false
  key :common_core_alignment_note, String
  
  many :common_cores :in => :related_cc_array
end