class CreateUsers::V00000000000001 < Avram::Migrator::Migration::V1
  def migrate
    enable_extension "citext"
    enable_extension "pgcrypto"

    create table_for(User) do
      primary_key id : UUID
      add_timestamps
      add email : String, unique: true, case_sensitive: false
      add encrypted_password : String
    end
  end

  def rollback
    drop table_for(User)
    disable_extension "citext"
  end
end
