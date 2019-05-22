.phony: build run clean

all: run

clean:
	docker-compose rm -f
	mv data.sqlite prev-data.sqlite || true

build: clean scraper.rb Gemfile Gemfile.lock
	docker image build -t atdis_test .

run: build
	docker-compose run scraper
	docker cp atdis_test_run_1:/app/data.sqlite .
