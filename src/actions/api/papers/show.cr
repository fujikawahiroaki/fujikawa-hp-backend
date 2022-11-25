class Api::Papers::Show < ApiAction
  get "/api/papers/:paper_id" do
    paper = PaperQuery.new.find(paper_id)
    json PaperSerializer.new(paper)
  end
end
