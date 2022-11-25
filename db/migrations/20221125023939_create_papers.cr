class CreatePapers::V20221125023939 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Paper) do
      primary_key id : UUID
      add_timestamps
      add name : String
      add summary : String
      add published_year : Int32
      add published_month : Int32
      add published_day : Int32
      add recorded_species : String
      add links : Array(String)
    end
  end

  def rollback
    drop table_for(Paper)
  end
end
