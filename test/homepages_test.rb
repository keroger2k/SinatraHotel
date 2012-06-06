require File.expand_path("../helper", __FILE__)

context "Hotel" do

  test "default route should point to index page" do
    get "/"
    assert last_response.body.include?("Index")
  end

  test "about route should display the about page" do
    get "/about"
    assert last_response.body.include?("Lorem ipsum")
  end

  test "contact route should display the contact page" do
    get "/contact"
    assert last_response.body.include?("Contact")
  end

  test "properties route should display the properties page" do
    get "/properties"
    assert last_response.body.include?("Properties")
  end

  test "services route should display the contact services" do
    get "/services"
    assert last_response.body.include?("Services")
  end

  test "staff route should display the staff page" do
    get "/about"
    assert last_response.body.include?("Staff")
  end

end