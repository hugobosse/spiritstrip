# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Category.destroy_all
Size.destroy_all
Product.destroy_all

puts 'Creating categories and Size...'
whisky = Category.create!(name: 'whisky')
bouteille = Size.create!(name: '70cl', volume: '70cl')

puts 'Creating products...'
Product.create!(sku: 'AT001W',   name: 'Auchentoshan American Oak', title:'Le Bon', category: whisky, size: bouteille, image: 'whisky_auchentoshan.png', price_cents: 3000, note: 'Vanille, Noix de Coco, Pamplemousse', description: 'Ce whisky des Lowlands, vieilli exclusivement en ex fûts de Bourbon est le cadeau parfait pour les papas GENTILS. A la fois doux et délicat Auchentoshan American Oak définit à lui seul les arômes habituels de ce mode de maturation.')
Product.create!(sku: 'AB010W',   name: 'Ardberg Ten', title:'La Brute', category: whisky, size: bouteille, image: 'ardberg_ten.png', price_cents: 4000, note: 'Hareng fumé (tourbe), Cacao, Ananas', description: 'Ce « monstre » de tourbe ravira les palais des plus experts comme ceux des novices. LE cadeau idéal pour les papas COSTAUD. En provenance de l’île d’Islay Ardbeg Ten résume parfaitement ces lieux à la fois rudes et accueillant. En bref, l’équilibre parfait !')
Product.create!(sku: 'GF105W',   name: 'Glenfarclas 105', title:'Le Truand', category: whisky, size: bouteille, image: 'glenfarclas_105.png', price_cents: 6900, note: 'Sherry, Noisette, Épices', description: 'Comment faire passer un Single Cask à 60% pour du « petit lait » ? C’est la question qui définit le charme de ce whisky du Speyside vieilli en fût de Sherry (vin de Xéres). Glenfarclas 105 (prononcer « One O Five ») est sans conteste le cadeau parfait pour le papa MALIN.')
puts 'Finished!'
