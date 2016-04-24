# Hook into the rails deployment process
namespace :assets do
  task :precompile do
    sh 'middleman build'
  end
end

#Require Middleman GH Pages for deploying to github pages
require 'middleman-gh-pages'