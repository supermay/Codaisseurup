FactoryGirl.define do
  factory :event do
    name              "Codaisseur"
    description      { Faker::Lorem.sentence(40) }
    location         { Faker::Address.city }
    price             12.0
    capacity          50
    includes_food     true
    includes_drinks   true
    starts_at         {Faker::Time.between(2.days.ago, Date.today, :all)}
    ends_at           {Faker::Time.between(2.days.ago, Date.today, :all)}
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end




# create_table "events", force: :cascade do |t|
#   t.string "name"
#   t.text "description"
#   t.string "location"
#   t.decimal "price"
#   t.integer "capacity"
#   t.boolean "includes_food"
#   t.boolean "includes_drinks"
#   t.datetime "starts_at"
#   t.datetime "ends_at"
#   t.boolean "active"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.bigint "user_id"
#   t.index ["user_id"], name: "index_events_on_user_id"
# end
