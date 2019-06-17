#!/usr/bin/env ruby
Bundler.require

url = "https://jamezpolley.github.io/atdis_utcdatetime_test/atdis/1.0"

ATDISPlanningAlertsFeed.save(url, "Sydney", {lodgement_date_start: "2018-01-01", lodgement_end_date: "2018-03-01"})
