class Api::Papers::Delete < ApiAction
  delete "/api/papers/:paper_id" do
    paper = PaperQuery.find(paper_id)
    DeletePaper.delete!(paper)
    head 204
  end
end
