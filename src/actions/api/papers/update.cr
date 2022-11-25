class Api::Papers::Update < ApiAction
  patch "/api/papers/:paper_id" do
    paper = PaperQuery.new.find(paper_id)
    SavePaper.update!(paper, params)
    head 204 
  end
end
