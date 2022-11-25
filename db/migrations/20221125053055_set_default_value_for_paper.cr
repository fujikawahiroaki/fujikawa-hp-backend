class SetDefaultValueForPaper::V20221125053055 < Avram::Migrator::Migration::V1
  def migrate
    # Read more on migrations
    # https://www.luckyframework.org/guides/database/migrations
    #
    # create table_for(Thing) do
    #   primary_key id : Int64
    #   add_timestamps
    #
    #   add title : String
    #   add description : String?
    # end

    # Run custom SQL with execute
    #
    # execute "CREATE UNIQUE INDEX things_title_index ON things (title);"
    alter table_for(Paper) do
      remove :used_specimens
      remove :links
      add used_specimens : Array(String), default: [] of String
      add links : Array(String), default: [] of String
    end
  end

  def rollback
    # drop table_for(Thing)
  end
end
