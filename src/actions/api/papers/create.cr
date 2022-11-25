class Api::Papers::Create < ApiAction
  post "/api/papers" do
    papers = SavePaper.create!(params)
    head HTTP::Status::CREATED
  end
end
