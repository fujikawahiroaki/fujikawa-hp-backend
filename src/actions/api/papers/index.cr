require "../../../serializers/paper_serializer"

class Api::Papers::Index < ApiAction
  include Api::Auth::SkipRequireAuthToken
  get "/api/papers" do
    papers = PaperQuery.new
    json PaperSerializer.for_collection(papers)
  end
end
