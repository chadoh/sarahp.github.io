###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

##Methods defined in the helpers block are available in templates
helpers do
  def nav_link(link_text, url, options = {})
    options[:class] ||= ""
    options[:class] << " active" if url == current_page.url
    link_to(link_text, url, options)
  end
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end


# #Adding Autoprefixer -- https://github.com/middleman/middleman-autoprefixer#usage
# activate :autoprefixer

# #Adding in Sprockets to make the rails vs of bootstrap work -- https://github.com/middleman/middleman-sprockets
# activate :sprockets

# ## Activating deploy for GitHub pages integration
#
# activate :deploy do |deploy|
#   deploy.method = :git
#   deploy.branch = 'master'
#   deploy.build_before = true
# end
#
# activate :directory_indexes