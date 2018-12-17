require 'sinatra'

require './cookie'
require './muffin'
require './cake'


set :protection, :except => :frame_options
set :bind, '0.0.0.0'

@cookies = [
  Cookie.new("Dark Chocolate Chips Cookies", 3.50, "/images/cookie1.jpg", "Made with white sugar; brown sugar; flour; a small portion of salt; eggs; a leavening agent such as baking powder; a fat, typically butter or shortening; vanilla extract; and semi-sweet chocolate pieces."),
  Cookie.new("Oven Baked Coffee Cookies", 5.50, "/images/cookie2.jpg", "These fully-loaded coffee cookies get their flavor from a healthy tablespoon of instant coffee granules and a sugary coffee drizzle."),
  Cookie.new("Delicious Creamy Tumeric Cookies", 10.90, "/images/cookie3.jpg", "Beat in the vanilla, egg, and egg yolk until light and creamy. Mix in the sifted ingredients until just blended.")
]

@muffin = [
  Muffin.new("Blueberry muffin", 4.50, "/images/blueberyym.jpg", "Combine flour, sugar, baking powder and a little salt in a large bowl. Add some vegetable oil, an egg, milk, and vanilla extract then stir with a fork until blended."),
  Muffin.new("Pumkin muffin", 3.50, "/images/pumkinm.jpg", "Combined flour, pumpkin pie spice, baking soda and salt in large bowl. Combine sugar, pumpkin, eggs, oil and juice in large mixer bowl; beat until just blended. "),
  Muffin.new("Redberry berry muffin",6.50, "/images/rasberrym.jpg", "Mix flour, granulated sugar, baking powder, salt and nutmeg. Stir in egg, milk, butter and vanilla just until blended.")
]

@cake = [
  Cake.new("Valvet cake", 5.0, "/images/vcake.jpg", "The reaction of acidic vinegar and buttermilk tends to better reveal the red anthocyanin in cocoa and keeps the cake moist, light, and fluffy. "),
  Cake.new("Delightful cake", 6.0,"/images/cococake.jpg", "Some of ingredients are flour, sugar, eggs, butter or oil or margarine, a liquid, and leavening agents, such as baking soda or baking powder. "),
  Cake.new("Heavenly cake", 1.0, "/images/penutcake.jpg", "Old fashioned, buttery golden yellow cake, just as moist and filled and frosted with our house chocolate buttercream. "),
]

get '/' do 
  erb :about, :layout => :home_layout
end

get '/cookie' do 
  erb :cookie, :layout => :home_layout
end

get '/muffin' do 
  erb :muffin, :layout => :home_layout
end

get '/cake' do
  erb :cake, :layout => :home_layout
end

 
