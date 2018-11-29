# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create!(
  [
    {
      name: 'mukesh'
    },
    {
      name: 'vikrant'
    },
    {
      name: 'mandar'
    },
    {
      name: 'Sunaina'
    },
    {
      name: 'madhuri'
    }

  ]
)

Post.destroy_all
Post.create!(
  [
    {
      content: "Armed with the astonishing ability to shrink in scale but increase in strength, con-man Scott Lang must embrace his inner-hero and help his mentor, Dr. Hank Pym, protect the secret behind his spectacular Ant-Man suit from a new generation of towering threats. Against seemingly insurmountable obstacles, Pym and Lang must plan and pull off a heist that will save the world.",
      user_id: User.first.id
    },
    {
      content: "When John Connor, leader of the human resistance, sends Sgt. Kyle Reese back to 1984 to protect Sarah Connor and safeguard the future, an unexpected turn of events creates a fractured timeline. Now, Sgt. Reese finds himself in a new and unfamiliar version of the past, where he is faced with unlikely allies, including the Guardian, dangerous new enemies, and an unexpected new mission: To reset the future...",
      user_id: User.first.id
    },
    {
      content: "When aliens misinterpret video feeds of classic arcade games as a declaration of war, they attack the Earth in the form of the video games.",
      user_id: User.last.id
    }
  ]
)

Comment.destroy_all
Comment.create!(
  [
    {
      content: "first comment",
      user_id: User.first.id,
      post_id: Post.first.id
    },
    {
      content: "2nd comment",
      user_id: User.second.id,
      post_id: Post.first.id
    },
    {
      content: "first comment",
      user_id: User.second.id,
      post_id: Post.second.id
    },
    {
      content: "2nd comment",
      user_id: User.last.id,
      post_id: Post.second.id
    },
    {
      content: "3rd comment",
      user_id: User.third.id,
      post_id: Post.second.id
    },
    {
      content: "4th comment",
      user_id: User.fourth.id,
      post_id: Post.second.id
    },
    {
      content: "5th comment",
      user_id: User.fourth.id,
      post_id: Post.second.id
    },
    {
      content: "first comment",
      user_id: User.last.id,
      post_id: Post.last.id
    },
    {
      content: "2nd comment",
      user_id: User.last.id,
      post_id: Post.last.id
    },
    {
      content: "3rd comment",
      user_id: User.last.id,
      post_id: Post.last.id
    },
    {
      content: "4th comment",
      user_id: User.last.id,
      post_id: Post.last.id
    },
    {
      content: "5th comment",
      user_id: User.last.id,
      post_id: Post.last.id
    },
    {
      content: "1st comment",
      user_id: User.first.id,
      post_id: Post.last.id
    },
    {
      content: "2nd comment",
      user_id: User.first.id,
      post_id: Post.last.id
    },
    {
      content: "3rd comment",
      user_id: User.first.id,
      post_id: Post.last.id
    }
  ]
)
