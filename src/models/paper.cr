class Paper < BaseModel
  table do
    column name : String
    column summary : String
    column published_year : Int32
    column published_month : Int32
    column published_day : Int32
    column recorded_species : Array(String) = [] of String
    column used_specimens : Array(String) = [] of String
    column links : Array(String) = [] of String
  end
end
