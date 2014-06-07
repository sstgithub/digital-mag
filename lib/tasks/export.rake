namespace :export do
  desc "Prints Photo.all, Place.all, & Location.all in a seeds.rb way."
  task :seeds_format => :environment do
    Photo.order(:id).all.each do |photo|
      puts "Photo.create(#{photo.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end

    Place.order(:id).all.each do |place|
      puts "Place.create(#{place.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end

    Location.order(:id).all.each do |location|
      puts "Location.create(#{location.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end


  end
end