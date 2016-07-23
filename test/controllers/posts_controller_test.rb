require "test_helper"

describe PostsController do
  it "should get index" do
    get posts_index_url
    value(response).must_be :success?
  end

  it "should get show" do
    get posts_show_url
    value(response).must_be :success?
  end

  it "should get create" do
    get posts_create_url
    value(response).must_be :success?
  end

  it "should get update" do
    get posts_update_url
    value(response).must_be :success?
  end

  it "should get delete" do
    get posts_delete_url
    value(response).must_be :success?
  end

end
