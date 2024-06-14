install:
	bundle install

build:
	JEKYLL_ENV=production bundle exec jekyll build --trace

serve:
	bundle exec jekyll serve --trace --livereload

serve-draft:
	bundle exec jekyll serve --draft --trace --livereload
