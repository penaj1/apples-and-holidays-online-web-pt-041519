require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 # given that holiday_hash looks like this:
 # {
 #   :winter => {
 #     :christmas => ["Lights", "Wreath"],
 #     :new_years => ["Party Hats"]
 #   },
 #   :summer => {
 #     :fourth_of_july => ["Fireworks", "BBQ"]
 #   },
 #   :fall => {
 #     :thanksgiving => ["Turkey"]
 #   },
 #   :spring => {
 #     :memorial_day => ["BBQ"]
 #   }
 # }
 # return the second element in the 4th of July array
 holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
 # holiday_hash is identical to the one above
 # add the second argument, which is a supply, to BOTH the
 # Christmas AND the New Year's arrays

 holiday_hash[:winter].each {|holiday, item| item << supply}

end


def add_supply_to_memorial_day(holiday_hash, supply)
 # again, holiday_hash is the same as the ones above
 # add the second argument to the memorial day array

 holiday_hash[:spring].each {|holiday_hash, item| item << supply}

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 # code here
 # remember to return the updated hash
 holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
 # return an array of all of the supplies that are used in the winter season

 holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
 holiday_hash.each do | season, holiday |
  puts "#{season.capitalize}:"
   holiday.each do | holiday, supply |
     puts "  #{holiday.to_s.split("_").map{|supply| supply.capitalize}.join(" ")}: #{supply.join(", ")}"
   end
 end
end


def all_holidays_with_bbq(holiday_hash)
 # return an array of holiday names (as symbols) where supply lists
 # include the string "BBQ"
 
 holiday_hash.map do |season, holiday|
   holiday.map do |holiday, supply|
     holiday if supply.include?("BBQ")
   end
end








