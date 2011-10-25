require 'rubygems'
require 'grackle'

class Tweet < ActiveRecord::Base

  MY_APPLICATION_NAME = "tammyportnoy"

  def self.get_latest
    tweets = client.statuses.user_timeline? :screen_name => MY_APPLICATION_NAME
    tweets.each do |t|
      created = DateTime.parse(t.created_at)
      unless Tweet.exists?(["created=?", created])
        Tweet.create({ :content => t.text, :created => created })
      end
    end
  end

  private
    def self.client
      Grackle::Client.new(:auth => {
        :type => :oauth,
        :consumer_key => "qqi8hLPH9Wtbyv96A4EH8Q",
        :consumer_secret => "xIfQMjvpesYdpfLqyaALLA8vrlL5zFzkUeGcGSCDRG4",
        :token => "19309186-XcAsxKPf6M5I8k9ds2bFrEkyqrYXRX6hCdk3P3HoE",
        :token_secret => "xRWe97CCu0NwYEARzKVKojfOYuoONF3XMdPucxlj4aY"
      })

    end
end
