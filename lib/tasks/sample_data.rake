namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(email: "admin@pancake.nl",
                 password: "pancake123",
                 password_confirmation: "pancake123",
                 role: "superadmin")
    Contact.create!(email: "info@pancake.nl",
                 response: "This is the response")
    Pages.create!(title: "Home",
                  url: "home",
                  meta_description: "This is the home page",
                  meta_keywords: "home, page",
                  menu: "Home",
                  template: "default")
    Pages.create!(title: "News",
                  url: "news",
                  meta_description: "This is the news page",
                  meta_keywords: "news, page",
                  menu: "News",
                  template: "default")
    Pages.create!(title: "Contact",
                  url: "contact",
                  meta_description: "This is the contact page",
                  meta_keywords: "contact, page",
                  menu: "Contact",
                  template: "default")
    Pages.create!(title: "Single Page",
                  url: "single_page",
                  meta_description: "This is a single page",
                  meta_keywords: "single, page",
                  menu: "Single Page",
                  template: "default")
    Pages.create!(title: "Dropdown",
                  url: "dropdown",
                  meta_description: "This is a sample dropdown page",
                  meta_keywords: "dropdown, page",
                  menu: "Dropdown",
                  template: "default")
    @page = Pages.last;
    Pages.create!(title: "First",
                  url: "first",
                  meta_description: "This is the first subpage of the dropdown",
                  meta_keywords: "subpage, dropdown, page",
                  menu: "First",
                  ancestry: @page.id,
                  template: "default")
    Pages.create!(title: "Second",
                  url: "second",
                  meta_description: "This is the second subpage of the dropdown",
                  meta_keywords: "subpage, dropdown, page",
                  menu: "Second",
                  ancestry: @page.id,
                  template: "default")
    @pages = Pages.all
    @pages.each do |page| 
      if page.url != 'news' && page.url != 'contact'
        Content.create!(content: "<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>",
                        pages_id: page.id)
        Content.create!(content: "<p>Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus. Donec mollis hendrerit risus. Phasellus nec sem in justo pellentesque facilisis. Etiam imperdiet imperdiet orci. Nunc nec neque. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi.</p>",
                        pages_id: page.id)
      end
    end
    10.times do |n|
      title = "News #{n+1}"
      url = "news_#{n+1}"
      date  = DateTime.now+n.days
      excerpt = "<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.</p>"
      content = "<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.</p."
      News.create!(title: title,
                   url: url,
                   date: date,
                   excerpt: excerpt,
                   content: content)
    end

  end
end