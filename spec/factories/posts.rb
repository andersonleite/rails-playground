FactoryGirl.define do
  factory :post do
    content 'First Post'
    author

    factory :post_with_comments do
      after(:create) do |post|
        create_list(:comment, 1, post: post)
      end
    end
  end
end
