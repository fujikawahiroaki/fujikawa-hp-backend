class PaperSerializer < BaseSerializer
  def initialize(@paper : Paper)
  end

  def self.collection_key
    "results"
  end

  def render
    {
      id: @paper.id,
      createdAt: @paper.created_at,
      name: @paper.name,
      summary: @paper.summary,
      publishedYear: @paper.published_year,
      publishedMonth: @paper.published_month,
      publishedDay: @paper.published_day,
      recordedSpecies: @paper.recorded_species,
      usedSpecimens: @paper.used_specimens,
      links: @paper.links
    }
  end
end
