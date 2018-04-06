require 'test_helper'

class Api::KombuchasControllerTest < ActionDispatch::IntegrationTest
  test "index returns collection of kombuchas" do
    get '/api/kombuchas', params: {}
    assert_equal response_body.length, Kombucha.count
  end

  test "show returns one kombucha" do
    kombucha = kombuchas(:guinny_pop)

    get "/api/kombuchas/#{kombucha.id}"
    assert_equal response_body['id'], kombucha.id
  end

  # test "create creates a new kombucha" do
  # end

  # test "update updates a kombucha" do
  # end

  def response_body
    @json ||= JSON.parse(@response.body)
  end
end
