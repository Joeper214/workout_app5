Creating home page feature spec
=================================

1. create a folder withon the 'spec' folder called 'features'
2. In the 'features' folder create a file 'creating_homepage_spec.rb'


Details of spec
==================

In the Guardfile we have the following line:

watch(rails.view_dirs) { |m| "spec/features/#{m[1]}" }
This line tells us that when the files in the app/views folder change, we want to run the specs in 'spec/features/<folder>' folder, where <folder> is the subfolder under views in which the file changed. So if you modify a file in app/views/articles, our <folder> will be 'articles'.

We are doing this because we don't want to run specs unrelated to the view being modified.