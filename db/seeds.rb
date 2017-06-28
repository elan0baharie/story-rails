Usersentence.destroy_all
def randomNumber

  test = rand 50
  return test
end

50.times do |index|
  Usersentence.create!(user: Faker::Name.name,
                            sentence: Faker::Lorem.sentence(20, false, 0).chop,
                            image: "https://rlv.zcache.com/happy_smiley_face_round_stickers-rbdcd90a58b8e40a9b895e7c2fd1e65ef_v9waf_8byvr_324.jpg",
                            story_id: 1)
end

p "Created #{Usersentence.count} usersentences"
