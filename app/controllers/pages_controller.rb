class PagesController < ApplicationController
  
  def home
    require 'net/ping'
    host = 'supernovaffxi.ddns.net'
    @current_time = Time.zone.now.in_time_zone("Eastern Time (US & Canada)")
    @post = Post.last
    
    host = 'supernovaffxi.ddns.net'
    p1 = Net::Ping::TCP.new(host, 54230)
    p2 = Net::Ping::TCP.new(host, 54230)
    p3 = Net::Ping::TCP.new(host, 54231)
    p4 = Net::Ping::TCP.new(host, 54001)
    
    if p1.ping? == true
      @world = "Online"
    else
      @world = "Offline"
    end
    
    if p2.ping? == true && p3.ping? && p4.ping?
      @login = "Online"
    else
      @login = "Offline"
    end
    
  end
  
  def about
    @current_time = Time.zone.now
  end
  
  def news
   
  end
  
  def patch
    
  end
  
  def setup
    
  end
  
  def faq
    
  end
end