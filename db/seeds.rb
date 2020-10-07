# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Resource.create(
  title: "Algebra Introduction - Basic Overview - Online Crash Course Review Video Tutorial Lessons",
  description: "1 hour video goving over basic algebra as you might learn it in high school",
  lowerGradeBound: 9,
  upperGradeBound: 12,
  url: "https://www.youtube.com/watch?v=grnP3mduZkM",
  subject: "Math",
  rating: 3

)

Resource.create(
  title: "Worksheet on Colonial America",
  description: "Meet the Middle Colonies, which are the present-day states of New York, New Jersey, Delaware and Pennsylvania. What does your child think life was like for colonists in the Middle Colonies? Social studies students will write a descriptive paragraph to show their understanding of life in the Middle Colonies and life in colonial America in general.",
  lowerGradeBound: 6,
  upperGradeBound: 8,
  url: "https://www.education.com/worksheet/article/middle-colonies/",
  subject: "History",
  rating: 2

)
Resource.create(
  title: "Instructions for Science Volcano",
  lowerGradeBound: 3,
  upperGradeBound: 8,
  url: "https://www.wikihow.com/Make-a-Volcano",
  subject: "Science",
  rating: 5 

)
