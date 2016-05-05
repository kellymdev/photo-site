# Categories
animals = Category.create!(
  name: 'Animals',
  image_url: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Seal.jpg'
)
birds = Category.create!(
  name: 'Birds',
  image_url: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/MandarinDuck.jpg'
)
landscapes = Category.create!(
  name: 'Landscapes',
  image_url: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Ruapehu.jpg'
)
nature = Category.create!(
  name: 'Nature',
  image_url: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/WaterLily.jpg'
)

# Images
Image.create!([
  {
    title: 'Mallard Ducklings',
    description: 'Mallard Ducklings, Anas platyrhynchos.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Ducklings.jpg',
    category: Category.find(birds)
  },
  {
    title: 'Mandarin Duck',
    description: 'Mandarin Duck, Aix galericulata.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/MandarinDuck.jpg',
    category: Category.find(birds)
  },
  {
    title: 'Arapawa Island Goat Kid',
    description: 'Arapawa Island Goat Kid - Capra aegagrus hircus.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/GoatKid.jpg',
    category: Category.find(animals)
  },
  {
    title: 'New Zealand Fur Seal',
    description: 'New Zealand Fur Seal, Arctocephalus forsteri.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Seal.jpg',
    category: Category.find(animals)
  },
  {
    title: 'North Island Robin',
    description: 'North Island Robin or Toutouwai, Petroica longipes.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/BWRobin.jpg',
    category: Category.find(birds)
  },
  {
    title: 'Kereru',
    description: 'New Zealand Pigeon (Kereru), Hemiphaga novaeseelandiae.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Kereru.jpg',
    category: Category.find(birds)
  },
  {
    title: 'Kakariki',
    description: 'Red-crowned Parakeet (Kakariki), Cyanoramphus novaezelandiae.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Kakariki.jpg',
    category: Category.find(birds)
  },
  {
    title: 'Pied Stilt',
    description: 'Pied Stilt (Poaka), Himantopus himantopus.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/PiedStilt.jpg',
    category: Category.find(birds)
  },
  {
    title: 'Mount Ruapehu',
    description: 'Mount Ruapehu, Tongariro National Park.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Ruapehu.jpg',
    category: Category.find(landscapes)
  },
  {
    title: 'Skippers Road',
    description: 'Skippers Road, Skippers Canyon, Otago.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Road.jpg',
    category: Category.find(landscapes)
  },
  {
    title: 'Tararua Ranges',
    description: 'Sunset over the Tararua Ranges',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Sunset.jpg',
    category: Category.find(landscapes)
  },
  {
    title: 'Te Rewa Rewa Bridge',
    description: 'Te Rewa Rewa Bridge, New Plymouth.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/TeRewaRewaBridge.jpg',
    category: Category.find(landscapes)
  },
  {
    title: 'Autumn',
    description: 'Autumn colours in Queenstown Gardens',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Autumn.jpg',
    category: Category.find(nature)
  },
  {
    title: 'Autumn Colours',
    description: 'Four Seasons on one Tree',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Leaves.jpg',
    category: Category.find(nature)
  },
  {
    title: 'Shadows',
    description: 'Shadows, Queenstown Gardens.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Shadows.jpg',
    category: Category.find(nature)
  },
  {
    title: 'Water Lily',
    description: 'Water Lily Reflections',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/WaterLily.jpg',
    category: Category.find(nature)
  }
])
