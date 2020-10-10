.PHONY: init
init:
	cp .env.sample .env
	bundle install --path vendor/bundle

.PHONY: run
run:
	bundle exec ruby app.rb
