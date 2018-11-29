This is complete a rails applications.
prerequisite
1. Use RVM install ruby 2.4.1
2. Rails 5.1.6
3. run `rake db:migrate`
4. seeding data run `rails db:seed`
5. bundle install

Test with postman

1. post_controller.rb
	-> index, show, create, update, destory
2. comment_controller.rb
	-> index, show, create, update, destroy

3. logic news_feed_controller.rb
	<!-- things that I have considered -->
	a. Avoid N+1 query
	b. Preload the data
	c. Using dry
	d. Inheritance over composition (mixin)
		created module the same
		1. lib/json.rb
		2. lib/post_json.rb
		3. lib/user_json.rb
		4. lib/comment_json.rb
	These all are resulable module, though logic is pretty basic. I only implemented to achieve given json. furthermore, we can refactor based on scenario and add some fuctionality based on params.

4. To send emails we can use the Observer pattern. This is not given in the problems.
	a. observers/notify_user.rb
	b. lib/emails/email_sender.rb <!-- A dummy code, Actual Logic can more complex -->
5. To send emails recent 50 posts
		a: NewsFeedController#send_emails




