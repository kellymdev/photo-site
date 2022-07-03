# Categories
birds = Category.find_or_initialize_by(name: 'Birds')
birds.image_url = 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-PiedStiltReflection.jpg'
birds.save!

landscapes = Category.find_or_initialize_by(name: 'Landscapes')
landscapes.image_url = 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-Ruapehu.jpg'
landscapes.save!

nature = Category.find_or_initialize_by(name: 'Nature')
nature.image_url = 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-WaterLily.jpg'
nature.save!

wildlife = Category.find_or_initialize_by(name: 'Wildlife')
wildlife.image_url = 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-Seal.jpg'
wildlife.save!

creative = Category.find_or_initialize_by(name: 'Creative')
creative.image_url = 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-CorrugationsAndCabbageTrees.jpg'
creative.save!

# Images
birds.images.create!([
  {
    title: 'North Island Robin',
    description: 'North Island Robin or Toutouwai, Petroica longipes.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-BWRobin.jpg'
  },
  {
    title: 'Kereru',
    description: 'New Zealand Pigeon (Kereru), Hemiphaga novaeseelandiae.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-Kereru.jpg'
  },
  {
    title: 'Pied Stilt',
    description: 'Pied Stilt (Poaka), Himantopus himantopus.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-PiedStilt.jpg'
  },
  {
    title: 'Pied Stilt Reflection',
    description: 'Pied Stilt Reflection, Himantopus himantopus.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-PiedStiltReflection.jpg'
  }
])

landscapes.images.create!([
  {
    title: 'Mount Ruapehu',
    description: 'Mount Ruapehu, Tongariro National Park.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-Ruapehu.jpg'
  },
  {
    title: 'Skippers Road',
    description: 'Skippers Road, Skippers Canyon, Otago.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-Road.jpg'
  },
  {
    title: 'Tararua Ranges',
    description: 'Sunset over the Tararua Ranges',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-Sunset.jpg'
  },
  {
    title: 'Te Rewa Rewa Bridge',
    description: 'Te Rewa Rewa Bridge, New Plymouth.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-TeRewaRewaBridge.jpg'
  },
  {
    title: 'Lake Rotoiti',
    description: 'Lake Rotoiti',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-LakeRotoiti.jpg'
  },
  {
    title: 'Honeycomb Rock',
    description: 'First light at Honeycomb Rock',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-HoneycombRock.jpg'
  },
  {
    title: 'Glenburn Sunrise',
    description: 'Glenburn Sunrise',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-GlenburnSunrise.jpg'
  },
  {
    title: 'Kaiti Hill',
    description: 'Kaiti Hill',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-KaitiHill.jpg'
  }
])

nature.images.create!([
  {
    title: 'Autumn',
    description: 'Autumn colours in Queenstown Gardens',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-Autumn.jpg'
  },
  {
    title: 'Autumn Colours',
    description: 'Four Seasons on one Tree',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-Leaves.jpg'
  },
  {
    title: 'Shadows',
    description: 'Shadows, Queenstown Gardens.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-Shadows.jpg'
  },
  {
    title: 'Water Lily',
    description: 'Water Lily Reflections',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-WaterLily.jpg'
  }
])

wildlife.images.create!([
  {
    title: 'New Zealand Fur Seal',
    description: 'New Zealand Fur Seal, Arctocephalus forsteri.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-Seal.jpg'
  },
  {
    title: 'New Zealand Fur Seal Pup',
    description: 'New Zealand Fur Seal Pup, Arctocephalus forsteri.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-NZFurSealPup.jpg'
  }
])

creative.images.create!([
  {
    title: 'Corrugations',
    description: 'Corrugations and Cabbage Trees',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-CorrugationsAndCabbageTrees.jpg'
  },
  {
    title: 'Monarch Butterfly',
    description: 'Monarch Butterfly, Danaus plexippus.',
    filename: 'https://s3-ap-southeast-2.amazonaws.com/photographysite/KM-MonarchButterfly.jpg'
  }
])
