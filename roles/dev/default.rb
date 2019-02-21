cookbooks_path = '../../cookbooks/'
recipes = %w[ vim/default.rb fish/default.rb ]

for recipe in recipes
  include_recipe cookbooks_path + recipe
end
