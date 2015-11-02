require "sinatra"

def generate_blog
  @bloggin = []

  @bloggin.push({
    num: 1,
    title: "A BABY DAPHNE IS BORN",
    date: "January 16th, 1984",
    entry: "My first adventure outside is quite exhilirating. There are lots of smiling faces.
    One of the humans smells like freshly baked cookies. I can't wait to try a cookie.",
    photo: "http://animals.ekstrax.com/wp-content/uploads/2014/03/cute-duck-pictures-25.jpg",
    alt: "duckling"
    })
  @bloggin.push({
    num: 2,
    title: "I'M LIKE THE WIND",
    date: "September 10th, 1989",
    entry: "It's been a long time since I wrote in the adventure log. I apologize,
    but youth has been so full of adventuring and excitement that I haven't had a chance to write. I'm doing well.
    I learned how to rollerblade this summer! My parents had some specially made for my duck feet.",
    photo: "https://s-media-cache-ak0.pinimg.com/736x/8b/a8/94/8ba89492ac8fe3c5aa2dc9966dfe0bde.jpg",
    alt: "cat in a tophat riding a unicorn"
    })
  @bloggin.push({
    num: 3,
    title: "CATS 4 L1F3",
    date: "January 16th, 1991",
    entry: "Today is the most important day of my life because I discovered the joy of cats.
    I now spend at least half my day looking at books about cats and drawing cats.",
    photo: "http://favim.com/orig/201105/12/book-cat-gato-heart-livro-Favim.com-42338.jpg",
    alt: "cat looking through book pages"})
  @bloggin.push({
    num: 4,
    title: "THE INTERNET IS  FOR CATS",
    date: "April 21st, 1992",
    entry: "Today is ACTUALLY the most important day of my life.
    We got America Online dial-up and I discovered the internet is for cats.
    I now spend all my time browsing the internet looking at cute cat pictures.",
    photo: "https://s-media-cache-ak0.pinimg.com/736x/1d/b4/f2/1db4f23e6fe7310f301e22029c76e27c.jpg",
    alt: "Daria rollerblading"
    })
  @bloggin.push({
    num: 5,
    title: "GOTTA SEE 'EM ALL",
    date: "October 26th, 2015",
    entry: "I'm sorry that I have been away for so long. I've been busy since the last log.
    It took -many- years, but I have now seen every cute cat picture on the internet. Wait, someone just posted another.
    Okay, I have NOW seen every cute cat picture on the internet. AAAHHHHH. Someone just posted three more.
    I've been at this for years now, and it just never stops. Help!",
    photo: "http://images5.fanpop.com/image/photos/28600000/Meowth-meowth-28666494-900-563.jpg",
    alt: "Meowth"})
end

def generate_projects
  @current_projects = []
  @completed_projects = []

  @current_projects.push({
    title: "The Meaning of Meta",
    link: "https://github.com/daphnegold/SinatraSite/tree/darg/master"
    })
  @completed_projects.push({
    title: "Finding the Elusive Tired Honey",
    link: "https://github.com/daphnegold/FarMar/tree/darg/master"
    })
  @completed_projects.push({
    title: "Investigative report: Where is Cookie Monster Now?",
    link: "https://gist.github.com/daphnegold/b6bd5dd8647e457aa195"
    })
  @completed_projects.push({
    title: "Monsieur le Mouse and the War of Many Cheeses",
    link: "https://github.com/Ada-C4/Word-Guess/tree/darg_jmn/master",
    collab: "Jenna Nichols"
    })
end

class MySite < Sinatra::Base
  get "/" do
    generate_blog
    generate_projects

    erb :index, :layout => false
  end

  get "/index" do
    generate_blog
    generate_projects

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
    generate_blog

    erb :blog
  end

  get "/projects" do
    @projects_bold = 'class="bolded"'
    @title = "Projects"
    generate_projects

    erb :projects
  end
end
