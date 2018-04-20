# Use Bourbon for SASS mixins and helpers
require "bourbon"

# Use Autoprefixer so we no longer need to use mixins for CSS3 properties
activate :autoprefixer

# Reload page when saving SCSS, CoffeeScript or HTML files
activate :livereload

# Blog configuration
activate :blog do |blog|

  # This will add a prefix to all links, template references and source paths
  # blog.prefix = "blog"

  # blog.permalink = "{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  blog.sources = "{year}/{month}/{day}/{title}.html"
  # blog.taglink = "tags/{tag}.html"
  blog.layout = "article"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"

  # blog.tag_template = "tag.html"
  # blog.calendar_template = "calendar.html"

  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"
  blog.custom_collections = {
    category: {
      link: '/categories/{category}.html',
      template: '/category.html'
    },
    author: {
      link: '/authors/{author}.html',
      template: '/author.html'
    }
  }

end

# Contentful CMS
activate :contentful do |f|
  f.space         = { blogPost: 'yz29ns0gm87z' }
  f.access_token  = 'f1efe4eae477ec20e80addb6d89c682b51c80bbb09b0dc0c031c773ad3cbfdff'
end

# No layout for XML
page "/feed.xml", layout: false

# No layout for JSON Feed
page "/feed.json", layout: false

# Sets the markdown to Kramdown so Github Pages stops throwing errors
set :markdown_engine, :kramdown

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  # Calculate the years for a copyright
  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      start_year.to_s
    else
      start_year.to_s + '-' + end_year.to_s
    end
  end

  def article_url(article)
    "http://ryanmerrill.net/"+article.path.gsub(/\s+/, "")
  end
end

configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Use relative URLs
  activate :relative_assets

end
