#!/usr/bin/env ruby

load 'rakelib/setup.rb'

task :default => :build

desc 'depoloy the site to the webserver'
task :deploy => [:build, 'deploy:rsync']

# Extra dependencies

PAGE_FILES = FileList['content/**/*.page']
OUT_FILES = PAGE_FILES.pathmap("%{content,output}d/%n.html")

OUT_FILES.each do |f|
  file f => ['lib/extras.rb']
end
