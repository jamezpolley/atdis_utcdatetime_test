# ATDIS scraper test 

 - Includes test data and scraper config to replicate https://github.com/planningalerts-scrapers/atdisplanningalertsfeed/issues/5

* For simpler local testing, simply run `make` on a machine with docker
and docker-compose installed. A docker image which (roughly) matches
what morph.io will run in production will be created and executed.

* If the scraper run was successful, the resulting `data.sqlite` will be
extracted from the container and left in the current directory. The
next time `make` is run, this will be moved to `prev-data.sqlite`.