# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(username: 'pkbanks', email: 'pkbanks@gmail.com', password:'1234', admin: true)
u2 = User.create(username: 'mugtree', email: 'sticky@nytimes.com', password:'1234')
u3 = User.create(username: 'birdies1', email: 'birdy@gmail.com', password:'1234')
u4 = User.create(username: 'cubbies', email: 'jordan@gmail.com', password:'1234')

a1 = Article.create(title: 'HEARD: Inside Uber’s Choice of a New C.E.O.', description: 'Before Uber’s board chose Dara Khosrowshahi to be the company’s new chief, there were power plays...', user_id: 1)

a2 = Article.create(title: 'There’s a Pizza Delivery in Ford’s Future', description: 'The automaker is showcasing its autonomous-vehicle technology with a trial of Domino’s deliveries...', user_id: 1)

a3 = Article.create(title: "'Cortana, Open Alexa,'' Amazon Says...", description: 'edited, an unusual partnership, Amazon and Microsoft are working together to extend the abilities...', user_id: 1)

a4 = Article.create(title: "Flying Cowboy Rides to Save Stranded Cattle", description: "Hurricane Harvey’s devastating rain put thousands of animals at...", user_id: 1)

a5 = Article.create(title: "Once-Mighty Deficit Hawks Hardly Peep...", description: "For years, Republican lawmakers lamented the soaring...", user_id: 1)

a6 = Article.create(title: "Trump Tax Proposal Benefits Wealthy, Including...", description: "The administration’s tax plan provides large benefits for the wealthy...", user_id: 1)

a7 = Article.create(title: "For a Preview of the Border Wall, Look to...", description: "A barrier between the United States and Mexico...", user_id: 2)

a8 = Article.create(title: "Corporations Have Rights. Why Shouldn’t Rivers?", description: "A lawsuit could upend environmental law, possibly allowing...", user_id: 2)

a9 = Article.create(title: "The Coming Software Apocalypse", description: "A small group of programmers...", user_id: 2)

a10 = Article.create(title: "The iPhone X is the Beginning of the End for Phones", user_id: 2)

a11 = Article.create(title: "'Convince Me' said the Investor. 'No' said the Founder.", user_id: 3)


a12 = Article.create(title: "Forget Bitcoin, Our Future is Moneyless", description: "If data are the new oil, can time be the new data?", user_id: 3)

a13 = Article.create(title: "A How-to Guide to Defining Your Tailored...", description: "Blockchain is poised to transform...", user_id: 3)


