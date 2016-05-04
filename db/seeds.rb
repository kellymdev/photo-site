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
  image_url: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Ruapehu.jpg'
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
    title: 'Mount Ruapehu',
    description: 'Mount Ruapehu, Tongariro National Park.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Ruapehu.jpg',
    category: Category.find(landscapes)
  },
  {
    title: 'California Quail',
    description: 'California Quail, Callipepla californica.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/CaliforniaQuail.jpg',
    category: Category.find(birds)
  },
  {
    title: 'Pied Stilt',
    description: 'Pied Stilt, Himantopus himantopus',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/PiedStiltReflection.jpg',
    category: Category.find(birds)
  },
  {
    title: 'Pied Stilt',
    description: 'Pied Stilt, Himantopus himantopus',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/PiedStiltStanding.jpg',
    category: Category.find(birds)
  },
  {
    title: 'Kereru',
    description: 'New Zealand Pigeon (Kereru), Hemiphaga novaeseelandiae',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Kereru.jpg',
    category: Category.find(birds)
  },
  {
    title: 'Takahe',
    description: 'Takahe, Porphyrio hochstetteri',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Takahe.jpg',
    category: Category.find(birds)
  },
  {
    title: 'Kakariki',
    description: 'Red-crowned Parakeet (Kakariki), Cyanoramphus novaezelandiae',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/Kakariki.jpg',
    category: Category.find(birds)
  },
  {
    title: 'New Zealand Scaup Duckling',
    description: 'New Zealand Scaup Duckling, Aythya novaeseelandiae',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/ScaupDuckling.jpg',
    category: Category.find(birds)
  }
])
