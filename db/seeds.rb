
meals = Meal.create([
  {
    name: "King Pizza",
    price: 10.50,
    description: "the best pizza in the area"
  },
  {
    name: "Spaghetti Carbonara",
    price: 15,
    description: "pasta with a delicious cream sauce with becon"
  },
  {
    name: "Cat Soup",
    price: 10,
    description: "soup for the cat - of the cat or made by the cat - you decide"
  },
  {
    name: "Fillet Mignon",
    price: 28,
    description: "delicious steak of the best possible cut"
  },
  {
    name: "Sea Food Special",
    price: 14,
    description: "you see food you eat it - there is nothing special about it"
  },
  {
    name: "Sushi Dragon",
    price: 9.80,
    description: "what is dragon sushi is hard to say"
  }
  ])


users = User.create([
  {
    username: "Kasia",
    password: "Kasia"
  },
  {
    username: "Hania",
    password: "Hania"
  },
  {
    username: "Zosia",
    password: "Zosia"
  },
  {
    username: "Orbitka",
    password: "Orbitka"
  },
  {
    username: "Daniel",
    password: "Daniel"
  },
  {
    username: "Mario",
    password: "Mario"
  },
  {
    username: "Piotr",
    password: "Piotr"
  }
  ])

tablenames = Tablename.create([
  {
    name: "Red",
    capacity: 4
  },
  {
    name: "Silver",
    capacity: 10
  },
  {
    name: "Platinum",
    capacity: 14
  },
  {
    name: "Blue",
    capacity: 4
  },
  {
    name: "White",
    capacity: 8
  }
  ])
