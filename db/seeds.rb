pp "Removing Old Records"
Host.destroy_all
User.destroy_all

pp "Creating Users"
user1 = User.create(email: "liv@test.com", password: "newzealand");
user2 = User.create(email: "ss@test.com", password: "australia");
user3 = User.create(email: "daniel@test.com", password: "sweden");
pp "3 Users created"

pp "Creating Hosts"
Host.create(name: "Liv", location: "New Zealand", work_category: "Gardening", work_description: "help with garden.....", time: 25, accommodation: true, user: user1)
Host.create(name: "Susu", location: "United States", work_category: "Babysitting", work_description: "help with babysitting.....", time: 20, accommodation: true, user: user2)
Host.create(name: "Daniel", location: "Mexico", work_category: "Housekeeping", work_description: "help with housekeeping.....", time: 15, accommodation: true, user: user3)
pp "3 Hosts created"
pp "Seed Completed"