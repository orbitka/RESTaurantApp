
meals = Meal.create([
  {
    name: "Pizza",
    price: 10.50,
    description: "best pizza in the area"
  },
  {
    name: "Spaghetti Carbonara",
    price: 15,
    description: "pasta with a delicious cream sauce with becon"
  },
  {
    name: "Sushi Dragon",
    price: 9.80,
    description: "what is dragon sushi is hard to say"
  }
  ])


users = User.create([
  {
    username: "kasia",
    password: "kasia"
  },
  {
    username: "zosia",
    password: "zosia"
  },
  {
    username: "hania",
    password: "hania"
  }
  ])

tablenames = Tablename.create([
  {
    name: "Red",
    capacity: 4
  },
  {
    name: "Silver",
    capacity: 4
  },
  {
    name: "White",
    capacity: 8
  }
  ])
