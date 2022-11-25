class SavePaper < Paper::SaveOperation
  # To save user provided params to the database, you must permit them
  # https://luckyframework.org/guides/database/saving-records#perma-permitting-columns
  #
  permit_columns name, summary, published_year, published_month, published_day, recorded_species, used_specimens, links
end
