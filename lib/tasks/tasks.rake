require 'open-uri'
require 'nokogiri'

namespace :db do

  desc "Offers from praca.pl"
  task :offers => :environment do
    offers_praca_pl
  end
end

def offers_praca_pl #oferty z praca.pl
  @i = 0
  @k = 1
  @doc = Nokogiri::HTML(open("http://www.praca.pl/oferty-pracy"))
  @ilosc_stron = @doc.xpath("//span[a>5]").text.to_i
  @title
      
  1.times do
      @doc = Nokogiri::HTML(open("http://www.praca.pl/oferty-pracy_" + @k.to_s))
      @doc.xpath("//td[@class = 'tytul']/a[1] | //td[@class = 'tytul so']/a[1] | //td[@class = 'tytul']/a[1]/attribute::href | //td[@class = 'tytul so']/a[1]/attribute::href").each do |zmienna|
        if @i == 0
          @title = zmienna.text
          @i = 1
        else
          offer = Joboffer.create!(:title => @title, :link => zmienna.text)
          offer.save
          @i = 0
        end
      end
      @k += 1
  end
end