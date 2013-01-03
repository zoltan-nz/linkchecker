require 'mechanize'

module Mecha
  def self.downloader(url)

    begin
      a = Mechanize.new
      a.get(url)

    rescue => e
      $stderr.puts "#{e.class}: #{e.message}"
    end

  end

  def self.title(url)
    begin
    downloader(url).title
    rescue => e
      $stderr.puts "#{e.class}: #{e.message}"
    end
  end

  def self.numberoflinks(url)
    begin
      downloader(url).links.length

    rescue => e
      $stderr.puts "#{e.class}: #{e.message}"
    end
  end

  def self.links(url, pattern='')
    begin
      downloader(url).links_with(:href => /#{pattern}/)

    rescue => e
      $stderr.puts "#{e.class}: #{e.message}"
    end
  end

end

class ApplicationController < ActionController::Base
  include Mecha
end

