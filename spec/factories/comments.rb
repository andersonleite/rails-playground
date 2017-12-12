FactoryGirl.define do
  factory :comment do
    content 'First comment'
    author
    post
  end
end
