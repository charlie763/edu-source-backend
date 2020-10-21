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
  videoUrl: "https://www.youtube.com/watch?v=grnP3mduZkM",
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
  title: "Exploring Our Solar System: Planets and Space for Kids - FreeSchool",
  lowerGradeBound: 0,
  upperGradeBound: 5,
  url: "https://www.youtube.com/watch?v=Qd6nLM2QlWw",
  subject: "Science",
  rating: 4 
)

Resource.create(
  title: "Photosynthesis | Educational Video for Kids",
  description: "Photosynthesis is a process used by plants and other organisms to convert light energy into chemical energy that can later be released to fuel the organisms' activities. This chemical energy is stored in carbohydrate molecules, such as sugars, which are synthesized from carbon dioxide and water – hence the name photosynthesis, from the Greek phōs (φῶς), light, and sunthesis (σύνθεσις), putting together.[1][2][3] In most cases, oxygen is also released as a waste product. Most plants, most algae, and cyanobacteria perform photosynthesis; such organisms are called photoautotrophs. Photosynthesis is largely responsible for producing and maintaining the oxygen content of the Earth's atmosphere, and supplies most of the energy necessary for life on Earth.",
  lowerGradeBound: 0,
  upperGradeBound: 5,
  url: "https://www.youtube.com/watch?v=UPBMG5EYydo",
  subject: "Biology",
  rating: 4 
)

Resource.create(
  title: "Ancient Egypt for Kids | History Video Lesson!",
  description: "In this Ancient Egypt video lesson for kids, learn about one of the first civilizations in history! Learn about the Nile River, Pharoahs, the pyramids, mummies and more!",
  lowerGradeBound: 3,
  upperGradeBound: 5,
  url: "https://www.youtube.com/watch?v=lBYmOuajdC8",
  subject: "History",
  rating: 4 
)

Resource.create(
  title: "Instructions for Science Volcano",
  lowerGradeBound: 3,
  upperGradeBound: 8,
  url: "https://www.wikihow.com/Make-a-Volcano",
  subject: "Science",
  rating: 5 
)

Resource.create(
  title: "Learn Spanish for Kids - Numbers, Colors & More",
  description: "In this exciting adventure, kids learn Spanish words for colors, toys, clothes, furniture, and counting",
  lowerGradeBound: 1,
  upperGradeBound: 5,
  url: "https://www.youtube.com/watch?v=8yuiUvi568I",
  subject: "Spanish",
  rating: 4 
)

Resource.create(
  title: "Learn Spanish for Kids – Body Parts, Family & Feelings",
  lowerGradeBound: 1,
  upperGradeBound: 5,
  url: "https://www.youtube.com/watch?v=aD5pRgDoYuw",
  subject: "Spanish",
  rating: 4 
)

u = User.create(username: "Charlie", password: "henry367")
u2 = User.create(username: "Jinaabah", password: "test")
u3 = User.create(username: "Naninbah", password: "test")
users = [u, u2, u3]

p = Playlist.create(name: "Default Bookshelf", user: u)
p.resources << Resource.first
p.resources << Resource.find(2)
p.resources << Resource.find(5)

p2 = Playlist.create(name: "Random Bookshelf", user: u)
p2.resources << Resource.find(2)
p2.resources << Resource.find(3)
p2.resources << Resource.find(6)

comments = ["My kids love this!", "I wish there were a more timestamps, so I could fast foward to where we need to go", "Where can I find more like this?", "This is great!"]

Resource.all.each{|resource| 
  resource.comments.create(
    user: users[rand(0..2)],
    resource: resource,
    text: comments[rand(0..3)]
  )
}