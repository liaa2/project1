Cocktail.destroy_all

c1 = Cocktail.create name: "Long Island Iced Tea", description: "A potent cocktail consisting of equal parts of, typically, five different distilled alcoholic liquors, usually vodka, gin, rum, tequila, and triple sec, with a small amount of mixer, usually cola."
c2 = Cocktail.create name: "Singapore Sling", description: "With brandy, fruit juices and liqueurs served in a tall glass garnished with a cherry."
c3 = Cocktail.create name: "Gin Fizz", description: "With lemon juice, sugar and carbonated water served on ice in a highball glass."
c4 = Cocktail.create name: "Red Fox", description: "Fresh pressed Watermelon Juice, Stoli vodka, vanilla syrup, a touch of rose syrup topped with sparkling wine and garnished with fresh watermelon."
c5 = Cocktail.create name: "Irn – Bro", description: "A fresh take on a whiskey highball with Michter’s Rye, Suze, bianco vermouth and a zesty, house-made mandarin soda."
c6 = Cocktail.create name: "Piña colada", description: "A sweet cocktail made with rum, coconut cream or coconut milk, and pineapple juice, served either blended or shaken with ice. It could be garnished with either a pineapple wedge, maraschino cherry, or both. "
c7 = Cocktail.create name: "Rye & Tight", description: "A boozy libation of rye whiskey, cherry heering and cold drip coffee infused Italian amaro with a touch of absinthe to lift it all up."
c8 = Cocktail.create name: "Agua Fresca", description: "Let’s get tropical! Mango and papaya infused Cazadores tequila paired with a bitter sweet orange liqueur and grapefruit bitters."
c9 = Cocktail.create name: "Rich & Famous", description: "The perfect mix of 666 Butter Vodka, high quality Toby’s Estate Coffee, Coffee liqueur, Galliano Vanila Liqueur, Dusted with cocoa and coffee beans."
c10 = Cocktail.create name: "El Pasaporte", description: "Fresh passion fruit, fresh squezed lime juice, symple syrup, maraschino liqueur and with it’s rich vanilla and caramel flavor notes, Bacardi Carta Oro! Garnished with Maraschino Cherry."
c11 = Cocktail.create name: "MARTIN PLACE", description: "TAKE 2 ponies Rutte celery gin, 1/2 pony Aperol, 1 tbs Maraschine liquor, 1 dash of Hibiscus and drops Angostura bitters "
c12 = Cocktail.create name: "MILLIONAIRE", description: "TAKE 1 pony House rum mix, 1 pony Sloe Gin, 1 pony apricot Brandy and 1 squeeze lime juice."
c13 = Cocktail.create name: "Feeling Meady", description: "Martell VS Cognac, pedro ximinez sherry,
black walnut & barrel aged bitters, egg white & a touch of mead. A short and punchy tipple with dessert-like
qualities."
c14 = Cocktail.create name: "Eric the Red", description: "Wyborowa vodka OR Beefeater gin, port, tomato, beetroot, horseradish, dulse, house pickled onion and spices. Blood red in colour with incredible depth of flavour, crowned with root vegetable crisps."
c15 = Cocktail.create name: "Bahama Mama", description: "With coconut liqueur, coffee liqueur, and pineapple juice served on the rocks."
c16 = Cocktail.create name: "Beet Highball", description: "1.5 oz Beetroot Gin, 0.5 oz Peach Liqueur, 1 oz Rhubarb Tea, 0.5 oz Gresh Pressed Lime and 0.5 oz Soda Water."

puts "Created #{Cocktail.all.length} cocktails."





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

b1.cocktails << c1 << c2 << c3
b2.cocktails << c5 << c7 << c8 << c9
b3.cocktails << c4 << c6 << c10
b4.cocktails << c11 << c12
b5.cocktails << c13 << c14
b6.cocktails << c15 << c16




Category.destroy_all

t1 = Category.create style: "Stirred Cocktails"
t2 = Category.create style: "Sours"
t3 = Category.create style: "Highballs"
t4 = Category.create style: "Flips, Fizzes, Swizzles, and Smashes"


puts "Created #{Category.all.length} categories."

t1.cocktails << c4 << c6 << c8 << c14
t2.cocktails << c9 << c10 << c15
t3.cocktails << c1 << c2 << c5 << c7 << c11 << c16
t4.cocktails << c3 << c12 << c13


Ingredient.destroy_all

i1 = Ingredient.create beverage: "Gin"
i2 = Ingredient.create beverage: "Vodka"
i3 = Ingredient.create beverage: "Rum"
i4 = Ingredient.create beverage: "Tequila"
i5 = Ingredient.create beverage: "Brandy"
i6 = Ingredient.create beverage: "Whisky"
i7 = Ingredient.create beverage: "liqueur"

puts "Created #{Ingredient.all.length} ingredients."

# i1.cocktails << c1

c1.ingredients << i1 << i2 << i3 << i4 << i7
c2.ingredients << i5 << i7
c3.ingredients << i1
c4.ingredients << i2
c5.ingredients << i6
c6.ingredients << i3
c7.ingredients << i6
c8.ingredients << i4 << i7
c9.ingredients << i2 << i7
c10.ingredients << i3 << i7
c11.ingredients << i1 << i7
c12.ingredients << i1 << i3 << i5
c13.ingredients << i5
c14.ingredients << i1 << i2
c15.ingredients << i7
c16.ingredients << i1 << i7


List.destroy_all

l1 = List.create name: "Solo Journey"
l2 = List.create name: "The Dancing Duo"
l3 = List.create name: "Party Time"

puts "Created #{List.all.length} lists."

l1.cocktails << c1 << c3 << c5 << c7 << c13
l2.cocktails << c1 << c2 << c6 << c10 << c14 << c15 << c16
l3.cocktails << c2 << c4 << c5 << c6 << c8 << c9 << c11 << c12 << c15


User.destroy_all

u1 = User.create username: "grrrrrant", password: "chicken"
u2 = User.create username: "textchimp", password: "chicken"
u3 = User.create username: "mikkimoo", password: "chicken"

puts "Created #{User.all.length} users."

u1.lists << l1
u2.lists << l2
u3.lists << l3
