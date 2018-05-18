# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Bar.destroy_all

b1 = Bar.create name: "The Baxter Inn", description: "In true New York or Boston bar tradition, it's difficult to find. Located at in the basement of a building at the back of an unmarked alleyway off Clarence Street, this drinking den – full of character and people – is an unexpected surprise for the first time visitor.

The dark, linear interior features a bar that runs almost the full 10 metres of its length. It’s one of the best and most well-stocked and tiered bars we’ve seen for a while. The initially overwhelming list of almost 800 whiskies (featuring everything from Talisker 10-year-old to Glenfiddich 12-year-old) can be deciphered by the helpful staff.

The menu isn't limited to whisky, though. It also includes all the usual spirits and cocktails; and large beer and wine lists. The crew is just as happy to mix up a killer negroni as they are something more bespoke, like a Talisker 10 Sour.", phone: "(02) 9221 5580"
b2 = Bar.create name: "Stitch", description: "The Stitch story starts in 2009 when Karl Schlothauer and Chris Lehoux transformed an old garage in Darlinghurst into Pocket Bar. One of the first small bars, Pocket soon proved a hit. A couple of years later and the Pocket crew was eyeing expansion. Stitch opened in early 2011.

From the initial idea of adorning the walls with old Singer sewing machines, they decided to go all out with the theme. Sewing machines and spools of thread mark the bar's street entrance. Downstairs, there’s a wall of booths, tables set against the staircase and vintage lamps throwing murky light.

The bar's cocktail menu changes frequently, offering riffs on classics plus more off-beat concoctions. A sizeable whisky selection is kept behind the bar, some of which is barrel-aged for use in Old Fashioneds and Manhattans. Beer and cider, and a wine list heavy on local drops completes the drinks menu.", phone: "(02) 9279 0380"
b3 = Bar.create name: "Assembly Bar", description: "Assembly Bar sits a little removed from the big-hitting bar scene further uptown. But that's no reason to overlook it. Following an ownership change in 2014, the space has kept its recycled, industrial aesthetic. Thanks to the addition of some all-star bartenders, it also gained some serious cocktail credentials.

Assembly's main room sports concrete floors, vintage Chesterfields and recycled wooden crates fashioned into tables. A spiral staircase leads to the mezzanine, where a dumb waiter elevates drinks from the bar, and tealight candles flicker against the dark. Outside, picnic tables sit on AstroTurf below a wall of faux ivy studded with fairy lights.

At the bar, house-made syrups, bitters and tinctures are used to create classic cocktails and a revolving, seasonal list. The Finale has green Chartreuse, gin, lime, coconut syrup, pineapple syrup and coconut flakes. A Vogue mixes lychee liqueur, lemon, apple juice and gin.", phone: "(02) 9261 0552"
b4 = Bar.create name: "Grasshopper", description: "It’s tricky to locate, but when you do, Grasshopper is one of the nicer things to find lurking at the end of a dark alley. Planted inconspicuously at the far end of Temperance Lane, this tiny CBD sanctuary was one of the first of a number of small bars to crop up in the midst of Sydney’s interior.

Opened by Martin O’Sullivan (who is President of the Small Bar Association) and Belinda Lai, Grasshopper is both a bar and a restaurant. The latter is a wonderfully cosy room upstairs with a small, French-leaning menu. Champagne and oysters? Veal with snail and garlic butter? Steak au poivre? Don’t mind if we do! The food is rich, tasty and suited to the warm, candle-flecked atmosphere.

If you’re just in for a drink, head downstairs. In the depths of the ‘hopper you will find some competent bartenders mixing a list of quaintly old-fashioned drinks with a wonderfully new-age quality (they serve them in recycled jam jars).", phone: "(02) 9947 9025"
b5 = Bar.create name: "Mjølner", description: "The first thing you see when you come down the stairs is part of a Viking ship. Almenning says a local craftsman has carved the head of a dragon to protrude from the wall. Then there’s all the ancient Viking replica weapons and armour pieces collected by the team.

The carvery has a daily rotation of four mains: a bird, a fish, meat and veg. It may be duck on Monday, chicken on Tuesday and pheasant on Wednesday. The animals will be done whole on a rotisserie.

Meat hangs visibly in fridges (converted from old kilns) and carved in a “carving throne” – an extension of the kitchen that flows into the dining space. There is also a “leg service”, where you can buy your own leg of cured meats and ask for it to be brought to your table, where it can be sliced for you on request. The starters and desserts will be more modern-Australian.

There are 450 whiskies on shelf, with plans to expand to 600, and a heavy focus on cocktails. There’s also some craft beers available.", phone: "(02) 8646 4930"
b6 = Bar.create name: "The Barber Shop", description: "Climb the steps past the barber shop and you'll find yourself in a large room housing an elegant bar covered with white tiles. Tables and chairs sit atop concrete floors and tea light candles flicker through the murky light. There's an outdoor area out back. It's a pleasant spot, made so by dangling plants and funky old stools. And if the laneway looks familiar, that's because it's also home to The Baxter Inn.

To drink, there's a good list of Australian beers and a wine list that's heavy on bottles from South Oz and France. But this being a cocktail bar, you're really here for the outstanding list of spirits and drinks made with them. Gin is a real passion and there are more than 300 to choose from, plus respectable ranges of whisky, rum, tequila and mezcal. They're paired with intriguing ingredients such as basil distillate (i.e. a spirit made from basil); almond oil and snowpea tincture.", phone: "(02) 9299 9699"

puts "Created #{Bar.all.length} bars."



Cocktail.destroy_all

c1 = Cocktail.create name: "Long Island Iced Tea", description: "A potent cocktail consisting of equal parts of, typically, five different distilled alcoholic liquors, usually vodka, gin, rum, tequila, and triple sec, with a small amount of mixer, usually cola."
c3 = Cocktail.create name: "Singapore Sling", description: "With brandy, fruit juices and liqueurs served in a tall glass garnished with a cherry."
c4 = Cocktail.create name: "Gin Fizz", description: "With lemon juice, sugar and carbonated water served on ice in a highball glass."
c5 = Cocktail.create name: "Piña colada", description: "A sweet cocktail made with rum, coconut cream or coconut milk, and pineapple juice, served either blended or shaken with ice. It could be garnished with either a pineapple wedge, maraschino cherry, or both. "
c6 = Cocktail.create name: "Adios M**********r", description: "A delicious cocktail with Vodka, Gin, Rum, Tequila, 7up and Blue Curacao."
c7 = Cocktail.create name: "Zombie", description: "With orange curaçao, grenadine, bitters, passion fruit, orange juice, lemon juice, and lime juice."
c8 = Cocktail.create name: "Mojito", description: "With mint, sparkling water and simple syrup served on ice garnished with lime and a sprig of mint."
c9 = Cocktail.create name: "Margarita", description: "A margarita is a cocktail consisting of tequila, orange liqueur, and lime juice often served with salt on the rim of the glass."
c10 = Cocktail.create name: "Tequila Sunrise", description: "The Tequila Sunrise is a cocktail made of tequila, orange juice, and grenadine syrup and served unmixed in a tall glass."
c11 = Cocktail.create name: "Fog Cutter", description: "The Fog Cutter is up there in terms of sheer number of different spirits put in a glass. It contains rum, gin, Cognac and sherry, as well as an orange and lemon juice mix—plus a little cocktail umbrella (this is a tiki drink, after all)."
c12 = Cocktail.create name: "Bloody Mary", description: "A cocktail containing vodka, tomato juice, and combinations of other spices and flavorings including Worcestershire sauce, hot sauces, garlic, herbs, horseradish, celery, olives, salt, black pepper, lemon juice, lime juice and/or celery salt. "
c13 = Cocktail.create name: "Fish House Punch", description: "If you’re hosting a party for a whole horde of L.I.I.T. lovers looking for something new, whip up a batch of Fish House Punch. The mix of dark rum, Cognac and peach brandy is enhanced by black tea, lemon juice and simple syrup."
c14 = Cocktail.create name: "Irish coffee", description: "A cocktail consisting of hot coffee, Irish whiskey, and sugar, stirred, and topped with thick cream. The coffee is drunk through the cream. "
c15 = Cocktail.create name: "Godfather", description: "The Godfather is a duo mixed drink made of Scotch whisky and amaretto."

puts "Created #{Cocktail.all.length} cocktails."



Category.destroy_all

t1 = Category.create style: "Stirred Cocktails"
t2 = Category.create style: "Sours"
t3 = Category.create style: "Highballs"
t4 = Category.create style: "Flips, Fizzes, Swizzles, and Smashes"


puts "Created #{Category.all.length} categories."
