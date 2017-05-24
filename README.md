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


Exercise manangement
===================
1. User to sign in
2. Upon successful sign in, user can click on a link to "My lounge" to go to an area that shows details of her/his workouts
3. User can then click another link (to be styled as a button)
4. User can fill out a for, with the details of workout
5. Alternatively, user can click on a link to go back to the lounge

Excercise facts:
  1. Has a duration in minutes
  2. Working details (essentially a description of the activity)
  3. Date of the activity
  4. Can only exists in the content of a usre (execise must be owned by a user)

Exercise expectations upon creation:
  1. The new excercise's user_id has to be the same as the logged in user's
  2. The current page should be the excercise's show page