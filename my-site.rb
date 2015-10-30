require "sinatra"

class MySite < Sinatra::Base
  get "/" do
    erb :index, :layout => false
  end

  get "/index" do
    erb :index, :layout => false
  end

  get "/about" do
    @about_bold = 'class="bolded"'
    @title = "About"
    @url_prefix = "http://ak-hdl.buzzfed.com/static/2014-04/enhanced/"
    @derpy_cats = ["webdr04/10/12/enhanced-buzz-29081-1397145781-14.jpg",
      "webdr06/4/16/enhanced-11136-1396643149-13.jpg",
      "webdr07/4/16/enhanced-16354-1396642706-25.jpg?",
      "webdr06/10/11/enhanced-buzz-10134-1397143232-12.jpg",
      "webdr07/9/14/enhanced-buzz-18793-1397069650-11.jpg",
      "webdr03/4/16/enhanced-26311-1396642685-1.jpg",
      "webdr06/9/14/enhanced-719-1397069471-5.jpg",
      "webdr08/4/16/enhanced-30052-1396642698-43.jpg"].shuffle
    erb :about
  end

  get "/blog" do
    @blog_bold = 'class="bolded"'
    @title = "Blog"
    erb :blog
  end

  get "/projects" do
    @projects_bold = 'class="bolded"'
    @title = "Projects"
    erb :projects
  end
end
