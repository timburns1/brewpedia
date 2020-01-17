-- DROP DATABASE IF EXISTS brewpediaapi;

-- CREATE database brewpediaapi;

USE brewpediaapi;

CREATE TABLE volume
(
    item_id VARCHAR(550) NOT NULL,
    beer_style VARCHAR(50) NOT NULL,
    beer_brewery VARCHAR(100) NOT NULL,
    beer_name VARCHAR(50) NOT NULL,
    beer_color VARCHAR(10) NOT NULL,
    beer_ibu VARCHAR(5) NOT NULL,
    beer_abv VARCHAR(5) NOT NULL,
    beer_nose BLOB(1000) NOT NULL,
    beer_flavor BLOB(1000) NOT NULL,
    beer_mouth BLOB(1000) NOT NULL,
    beer_finish BLOB(1000) NOT NULL,
    PRIMARY KEY (item_id)
);

Select *
FROM volume;

INSERT INTO volume
    (item_id, beer_style, beer_brewery, beer_name, beer_color, beer_ibu, beer_abv, beer_nose, beer_flavor, beer_mouth, beer_finish)
VALUES
    (1001, 'Altbier', 'Uerige Obergärige Hausbrauerei', 'Uerige Doppelsticke', 'Mahogany', '75', '8.5%', 'Sweet caramel molassase and dark bread malts.', 'Caramel, nuts and dark bread with a hint of stone fruit.', 'Light bodied with a bitter, dry medium body. High carbonation.', 'Dry with a lingering bitterness that mellows.'),
    (1002, 'Altbier', 'The Olde Mecklenburg Brewery', 'Copper', 'Amber', '29', '4.8%', 'Rich caramel and yeasty bread notes.', 'Heavily malty with a hint of metallic flavors.', 'Medium body and carbonation. Semi-dry', 'Lingering bread matls'),
    (1003, 'Altbier', 'Brauerei Schumacher', 'Schumacher Alt', 'Amber', '36', '4.6%', 'Caramel and bready with a hint of toffee and citrus.', 'Caramel, cereal breads and toffee.', 'Medium body and carbonation.', 'Herbatious bitterness with a low lasting malt flavor.'),
    (1004, 'Amber Ale', 'New Belgium Brewing', 'Fat Tire', 'Amber', '22', '5.2%', 'Biscuits, toasted malts and brown sugar.', 'Strong toasted malts with a hint of caramel.', 'Light-bodied with medium carbonation.', 'malty, slightly buttery bread aftertaste. Medium-dry.'),
    (1005, 'Amber Ale', 'Brewery Ommegang', 'Rare Vos', 'Amber', '20', '6.5%', 'Banana bread and slight grassy notes.', 'Mild banana with bready malts and Belgian spice.', 'Medium body and carbonation.', 'Breads and spices with a champagne dry finish.'),
    (1006, 'Amber Ale', 'Bells Brewery', 'Amber Ale', 'Amber', '32', '5.8%', 'Clean malts with hints of honey and herbs.', 'Malty with a slight honey sweetness.', 'Medium-full body with medium carbonation.', 'Lightly piney bitter finish.'),
    (1007, 'Amber Ale', 'Tröegs Independant Brewing', 'Hopback', 'Amber', '55', '6.0%', 'Lighty bready and caramel notes. Semi-sweet.', 'Caramel, toffee and brown bread.', 'Medium body and carbonation.', 'Light hoppiness with brown bread malts.'),
    (1008, 'Amber Ale', 'Anderson Valley Brewing', 'Boont Amber Ale', 'Amber', '15', '5.8%', 'Caramel, toffee and a hint of citrus.', 'Bisquits, caramel and toffee.', 'Medium-full body with medium carbonation.', 'Semi-dry, malty finish.'),
    (1009, 'Amber Ale', 'Rogue Ales', 'American Amber Ale', 'Amber', '53', '5.3%', 'Caramel and toffee with light grass and citrus notes.', 'Strong hop profile up front (unusual for the style), followed by more traditional malt characters.', 'Medium body and carbonation', 'Bready and semi-dry.'),
    (1010, 'Amber Ale', 'Ale Asylum', 'Ambergeddon', 'Amber', '60', '6.8%', 'Biscuity with a hint of caramel and booze. Faint citrus rind.', 'Toasted malts, light toffee sweetness with hints of orange resin.', 'Medium-full body and medium carbonation.', 'Hoppier and more herbal finish for the style.'),
    (1011, 'Amber Ale', 'Saint Arnold Brewing Company', 'Amber Ale', 'Copper', '31', '5.5%', 'Biscuits and crackers with pronounced hoppy herb sent.', 'Equally malty as it is hoppy.', 'Medium body with a slightly higher carbonation for the style. Slightly creamy texture.', 'Crisp and dry with the hops lingering longer than the malts.'),
    (1012, 'Amber Ale', 'The Duck-Rabbit Crat Brewery', 'Amber Ale', 'Amber', 'N/A', '5.5%', 'Subtle toasted malts, mineral water and herbal hops.', 'Roasted malts, brassy mineral water and grassy hops.', 'Medium body with low carbonation.', 'Slightly malty with grassy notes that linger.'),
    (1013, 'Amber Ale', 'Dark Horse Brewing Comapny', 'Belgian-Style Amber Ale', 'Mahogany', '16', '5.5%', 'Pungent with caramel and cherry/red berry notes. Slightly leathery.', 'Semi-sweet malts with a hint of cherry tart and hop bitterness.', 'Medium body and carbonation.	', 'Long and dry finish follows flavor profie.'),
    (1014, 'American Ajunct Lager', 'Anheuser-Busch', 'Budweiser', 'Gold', '12', '5.0%', 'Faint notes of bread.', 'Light notes of bread and hops with slight corn sweetness.', 'Medium-light body with medium carbonation.', 'Semi-dry finish.'),
    (1015, 'American Ajunct Lager', 'Anheuser-Busch', 'Bud Light', 'Straw', '6', '4.6%', 'Very faint notes of bread and grains', 'Watery with hints of grain.', 'Light body with light carbonation.', 'Semi-dry.'),
    (1016, 'American Ajunct Lager', 'Anheuser-Busch', 'Michelob Ultra', 'Straw', '10', '4.2%', 'Light hop notes and bread', 'Grains with a light hop bitterness.', 'Medium-light body with medium-carbonation.', 'Clean and semi-dry.'),
    (1017, 'American Ajunct Lager', 'Pabst Brewing Company', 'Pabst Blue Ribbon', 'Gold', '10', '4.6%', 'Grassy and slightly musty.', 'Grass and grains with very little hop bitterness.', 'Medium-light body and carbontion', 'Clean and semi-dry.'),
    (1018, 'American Ajunct Lager', 'Pabst Brewing Company', 'Schlitz', 'Gold', 'N/A', '4.6%', 'Sweet malts and corn.', 'Grains with light, earthy hops.', 'Medium-light body and carbonation.', 'Clean and semi-dry.'),
    (1019, 'American Ajunct Lager', 'Coors Brewing Company', 'Coors Banquet', 'Gold', '15', '5.0%', 'Cereal grains and corn.', 'Grains and corn with a slight hop bitterness.', 'Medium-light body and carbonation.', 'Semi-Dry'),
    (1020, 'American Ajunct Lager', 'Coors Brewing Company', 'Coors Light', 'Straw', '10', '4.2%', 'Faint hints of lager yeast and noble hops.', 'Mild grain notes and slight bitting hops.', 'Light body with medium-high carbonation.', 'Clean and semi-dry.'),
    (1021, 'American Ajunct Lager', 'Narragansett Brewing', 'Narraganset', 'Gold', '12', '4.6%', 'Corn and cereal grains.', 'Corn and sweet malts with a hint of metallic bitterness.', 'Medium body and carbonation.', 'Semi-dry with a slight grain aftertaste.'),
    (1022, 'American Ajunct Lager', 'Miller Brewing Comany', 'Miller Lite', 'Gold', '10', '4.2%', 'Corn and cereal grains.', 'Sweet corn and grains.', 'Light body and medium-high carbonation.', 'Semi-dry with a slight grain aftertaste.'),
    (1023, 'American Ajunct Lager', 'Miller Brewing Comany', 'Miller High Life', 'Gold', '7', '4.2%', 'Corn with rice and other grains.', 'Crackers, malts and a faint herbal spice from the hops.', 'Medium-light body and carbonation.', 'Crisp and semi-dry.'),
    (1024, 'Berliner Weisse', 'White Birch Brewing', 'Berliner Weisse', 'Gold', 'N/A', '5.5%', 'Sourdough bread, lemon and faint sour milk notes.', 'Light bitterness with the taste following the nose.', 'Lightly bodied with high carbonation.', 'Fast and clean with a lingering sourness.'),
    (1025, 'Berliner Weisse', 'Perennial Artisan Ales', 'Peach Berliner Weisse', 'Gold', 'N/A', '4.2%', 'Peach and lactose.', 'Lactic acid with sweet and tart peach flavors.', 'Light, dry body with medium carbonation.', 'Lingering peach skin tartness lingers on the finish.'),
    (1026, 'Berliner Weisse', 'Ithaca Beer Company', 'Cayuga Cruiser', 'Gold', 'N/A', '4.2%', 'Lemon peel, green apple skin and musty hay.', 'Lemon tartness and unripe pineapple up front. light cracker and wheat back.', 'Light body with high carbonation.', 'Ends grassy and slightly salty.'),
    (1027, 'Berliner Weisse', 'Grand Teton Brewing', 'Snarling Badger', 'Gold', '15', '7.5%', 'Lemon, esters, yeast and clove.', 'Wheaty, yeasty and strong esters.', 'Medium-full body with medium carbonation.', 'Acrid, lingering finish.'),
    (1028, 'Berliner Weisse', 'Berliner Kindl Brauerei', 'Berliner Kindl Weisse', 'Straw', '6', '3.0%', 'Tart lemon and yeasty wheat aromas.', 'Flavor closely follows the nose with lemon and wheat.', 'Crisp, light body with high carbonation.', 'Taste diseapears fast and clean.'),
    (1029, 'Bière de Garde', 'The Schlalfy Tap Room', 'Bière de Garde', 'Copper', '20', '7.0%', 'Earthy with toasted oats.', 'Similar to the nose with bready sweetness.', 'Full-bodies with medium carbonation.', 'Dry, malty finish.'),
    (1030, 'Bière de Garde', 'Brasserie Castelain', 'Blond Biere de Garde', 'Amber', 'N/A', '6.4%', 'Bread, esters and a hint of honey.', 'Caramel and peppery flavors thoughout.', 'Full-bodied with medium-high carbonation.', 'Crisp caramel and herbs.'),
    (1031, 'Bière de Garde', 'Southampton Publick House', 'Bière de Garde', 'Amber', 'N/A', '6.6%', 'Biscuits, caramel and citrus peel.', 'Biscuit, caramel, apple, citrus peel and yeasty spices.', 'Creamy, medium body and medium carbonation.', 'Toasted malts and yeasty spices linger.'),
    (1032, 'Bière de Garde', 'Southampton Publick House', 'French Country Christmas', 'Amber', 'N/A', '6.8%', 'Caramel, fried fruits and heavy yeasts.', 'Similar to the nose with fruit and yeast spices on the back end.', 'Medium-full body and medium carbonation.', 'Warm and dry finish.'),
    (1033, 'Blonde Ale', 'Firestone Walker Brewing', '805 Blonde Ale', 'Gold', '20', '4.7%', 'Biscuit, malts and grain.', 'Follows the nose with a very slight hint of hops and honey.', 'Medium body and carbonation.', 'Typical bready finish per the style.'),
    (1034, 'Blonde Ale', 'Atwater Brewery', 'Dirty Blonde Ale', 'Gold', '8', '4.5%', 'Orange, caramel and coriander.', 'Semi-sweet, following the nose closely.', 'Medium body and carbonation.', 'Caramel and coriander lingers.'),
    (1035, 'Blonde Ale', 'Ska Brewing', 'True Blonde Ale', 'Straw', '22', '5.3%', 'Grainy with floral hints and some honey notes.', 'Floral bitterness with notes of pears and honey.', 'Medium body and medium-high carbonation.', 'Smooth with a short lasting hint of grains and honey.'),
    (1036, 'Blonde Ale', 'River Horse Brewing', 'Summer Blonde Ale', 'Gold', 'N/A', '4.5%', 'Grainy malts, lemon and grassy hops.', 'Closely follows the nose with a slight fruitiness in the middle.', 'Smooth, medium body and medium-light carbonation.', 'Semi-dry. Grassy hop bitterness lingers.'),
    (1037, 'Blonde Ale', 'Thomas Hooker Brewing', 'Blonde Ale', 'Straw', '11', '4.6%', 'Grasses, wax green beans and lemon zest.', 'Taste is heavy on the wax-bean and sweet grass flavors.', 'Medium-light body and carbonation.', 'Slightly soapy aftertaste with hints of dried grass.'),
    (1038, 'Blonde Ale', 'DuClaw Brewing Company', 'Bare Ass Blonde Ale', 'Gold', '19', '5.0%', 'Sweet and bready with little floral hop notes.', 'Sweet, creamy malt and bread. Low hop bitterness.', 'Medium body and carbonation.', 'Typical bready finish per the style.'),
    (1039, 'Bock/Dopplebock', 'Spoetzl Brewery', 'Shiner Bock', 'Amber', '13', '4.4%', 'Toasted breadcrumbs and bread crust.', 'Flavor follows the nose closely. Very low hop bitterness.', 'Light body and carbonation.', 'Dry with bready malts lasting.'),
    (1040, 'Bock/Dopplebock', 'Boston Beer Company', 'Chocolate Bock', 'Black', '11', '5.8%', 'Strong cocoa and raisin notes.', 'Flavor follows the nose closely. Some hints of dark fruit (Plum).', 'Medium body and carbonation.', 'Dry with bready malts lasting.'),
    (1041, 'Bock/Dopplebock', 'Boston Beer Company', 'Double Bock', 'Amber', '25', '9.5%', 'Caramel, toffee and dark sugars.', 'Same as the nose with added notes of dried fruit and yeast.', 'Full-bodied with medium-light carbonation.', 'Bold but clean bitter finish.'),
    (1042, 'Bock/Dopplebock', 'Paulaner Brauerei', 'Salvator', 'Amber', '28', '7.9%', 'Heavy bread and boozy notes.', 'Raisin and breadcrumbs on the front. Strong alcohol taste on the back side.', 'Light body and carbonation.', 'Dry with lasting bitterness.'),
    (1043, 'Bock/Dopplebock', 'Dark Horse Brewing', 'Perkulator Coffee Dopplebock', 'Brown', 'N/A', '7.0%', 'Coffee grounds with a slight phelonic spice notes.', 'burnt coffee, malts and hints of spice.', 'Creamy, light body with medium carbonation.', 'Dry with bready malts and linger spices.'),
    (1044, 'Bock/Dopplebock', 'Thomas Creek Brewery', 'Deep Water Dopplebock Lager', 'Brown', '30', '7.0%', 'Dark fruit such as raisins and plums, breads and brown sugar.', 'Follows the attributes of the nose with the addition of a robust chocolate flavor.', 'Warm, medium body with medium carbonation.', 'Sweet and malty with a lasting warmth.'),
    (1045, 'Bock/Dopplebock', 'Wagner Valley Brewing', 'Sled Dog', 'Amber', '12', '8.5%', 'Toasted breadcrumbs, caramel, dates, plums and some rye spices.', 'Flavor follows the nose closely with a hint of clove and cinnamon.', 'Medium body and carbonation.', 'Clean and dry. Some lasting rye spice.'),
    (1046, 'Brown Ale', 'Heineken Nederland B.V.', 'Newcastle Brown Ale', 'Brown', '18', '4.7%', 'Roasted malts, dried fruit, chocolate and toffee.', 'Slightly earthy, light notes of roasted malts chocolate and minerals.', 'Light body and medium carbonation.', 'Quick, clean finish with a brief bitterness.'),
    (1047, 'Brown Ale', 'Rogue Ales', 'Hazelnut Brown Nectar', 'Brown', '33', '5.6%', 'Hazelnut, walnuts and sweet smoke are forward, with chocolate and toffee notes supporting.', 'Taste closely follows the nose. Light smoke flavor noticable throughout.', 'Medium-light body and medium carbonation.', 'Dry, peppery and slightly burnt.'),
    (1048, 'Brown Ale', 'Samuel Smith', 'Nut Brown Ale', 'Brown', '30', '5.0%', 'Figs, honey, candied dates and caramel.', 'Dark fruits, nuts, maple and toffee.', 'Full-body and medium-light carbonation.', 'Silky smooth with a lasting nutty flavor.'),
    (1049, 'Brown Ale', 'Sierra Nevada Brewing', 'Tumbler Autumn Brown Ale', 'Brown', '33', '5.5%', 'Maple syrup, toasted breads and burnt chocolate.', 'Coffee notes with a pronounced hop profile not often found in the style.', 'Medium body and medium carbonation.', 'Dry, hoppy finish with lingering chocolate and toffee.'),
    (1050, 'Brown Ale', 'Bells Brewery', 'Best Brown Ale', 'Copper', 'N/A', '5.8%', 'Coffee, caramel, roasted malts and dark fruit.', 'Taste closely follows the nose. toffee sweetness with a pronounced hop balance.', 'Medium body and light carbonation.', 'Balanced, slightly bready finish.'),
    (1051, 'Brown Ale', 'Cigar City Brewing', 'Maduro Brown Ale', 'Brown', '25', '5.5%', 'Roasted malts, caramel and coffee.', 'Brown bread, caramel and nutty flavors.', 'Medium body and medium-light carbonation.', 'Warm with lasting nut flavors.'),
    (1052, 'Cream Ale', 'Hales Ales Brewery', 'Hales Cream Ale', 'Gold', '19', '5.1%', 'Nutty grain, hints of lemon and leafy hops.', 'Closely follows with a balance between the bready sweetness and leafy hop bitterness.', 'Light body and medium-light carbonation.', 'Creamy smooth and clean.'),
    (1053, 'Cream Ale', 'AleSmith Brewing Company', 'Cream Ale', 'Gold', 'N/A', '5.0%', 'Sweet cream and piney hops.', 'Taste follows the nose.', 'Light body and medium carbonation.', 'Creamy smooth and clean.'),
    (1054, 'Cream Ale', 'Picaroons Brewing Company', 'Maple Cream Ale', 'Copper', 'N/A', '5.0%', 'Sweet maple syrup and hints of molasses.', 'Sweet malts and cream and maple syrup.', 'Medium-light body and light carbonation.', 'Creamy smooth with lingering maple syrup.'),
    (1055, 'Dunkelweizen', 'Bayerische Staatsbrauerei Weihenstephan', 'Hefeweissbier Dunkel', 'Brown', '14', '5.3%', 'Banana, cloves and sweet malts.', 'Follows the nose with the addition of caramel and brown bread.', 'Medium body and carbonation.', 'Creamy with a soft and dry end.'),
    (1056, 'Dunkelweizen', 'Spaten-Franziskaner-Bräu', 'Franziskaner Hefe-Weisse Dunkel', 'Amber', '10', '5.0%', 'Caramel, banana and yeast. Slight hints of lemon and pineapple', 'Taste softly follows the nose.', 'Medium-light body and carbonation.', 'Soft and dry end with a balance between malts and hops.'),
    (1057, 'Dunkelweizen', 'Erdinger Weissbräu', 'Erdinger Weissbier Dunkel', 'Brown', '14', '5.3 %', 'Caramel, banana and yeast. Slight hints of lemon and pineapple', 'Taste softly follows the nose.', 'Medium-light body and carbonation.', 'Soft and dry end with a balance between malts and hops.')
       