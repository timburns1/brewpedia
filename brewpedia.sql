CREATE database brewpediaapi;

USE brewpediaapi;

CREATE TABLE volume(
	item_id VARCHAR(550) NOT NULL,
	beer_style VARCHAR(50) NOT NULL,
	beer_brewery VARCHAR(100) NOT NULL,
	beer_name VARCHAR(50) NOT NULL,
	beer_color VARCHAR(10) NOT NULL,
    beer_ibu VARCHAR(5) NOT NULL,
    beer_abv VARCHAR(5) NOT NULL,
    beer_nose VARCHAR(65535) NOT NULL,
    beer_flavor VARCHAR(65535) NOT NULL,
    beer_mouth VARCHAR(65535) NOT NULL,
    beer_finish VARCHAR(65535) NOT NULL,
	PRIMARY KEY (item_id)
);

Select * FROM volume;

INSERT INTO volume(item_id, beer_style, beer_brewery, beer_name, beer_color, beer_ibu, beer_abv, beer_nose, beer_flavor, beer_mouth, beer_finish)
VALUES (001, 'Altbier', 'Uerige Obergärige Hausbrauerei', 'Uerige Doppelsticke', 'Mahogany', '75', '8.5', 'Sweet caramel molassase and dark bread malts.', 'Caramel, nuts and dark bread with a hint of stone fruit.', 'Light bodied with a bitter, dry medium body. High carbonation.', 'Dry with a lingering bitterness that mellows.'),
	   (002, 'Altbier', 'The Olde Mecklenburg Brewery', 'Copper', 'Amber', '29', '4.8', 'Rich caramel and yeasty bread notes.', 'Heavily malty with a hint of metallic flavors.', 'Medium body and carbonation. Semi-dry', 'Lingering bread matls'),
       (003, 'Altbier', 'Brauerei Schumacher', 'Schumacher Alt', 'Amber', '36', '4.6', 'Caramel and bready with a hint of toffee and citrus.', 'Caramel, cereal breads and toffee.', 'Medium body and carbonation.', 'Herbatious bitterness with a low lasting malt flavor.'),
       (010, 'Amber Ale', 'New Belgium', 'Fat Tire', 'Amber', '22', '5.2', 'Biscuits, toasted malts and brown sugar.', 'Strong toasted malts with a hint of caramel.', 'Light-bodied with medium carbonation.', 'malty, slightly buttery bread aftertaste. Medium-dry.'),
       (011, 'Amber Ale', 'Ommegang', 'Rare Vos', 'Amber', '20', '6.5', 'Banana bread and slight grassy notes.', 'Mild banana with bready malts and Belgian spice.', 'Medium body and carbonation.', 'Breads and spices with a champagne dry finish.'),
       (012, 'Amber Ale', 'Bells Brewery', 'Amber Ale', 'Amber', '32', '5.8', 'Clean malts with hints of honey and herbs.', 'Malty with a slight honey sweetness.', 'Medium-full body with medium carbonation.', 'Lightly piney bitter finish.'),
       (013, 'Amber Ale', 'Tröegs', 'Hopback', 'Amber', '55', '6.0', 'Lighty bready and caramel notes. Semi-sweet.', 'Caramel, toffee and brown bread.', 'Medium body and carbonation.', 'Light hoppiness with brown bread malts.'),
       (014, 'Amber Ale', 'Anderson Valley', 'Boont Amber Ale', 'Amber', '15', '5.8', 'Caramel, toffee and a hint of citrus.', 'Bisquits, caramel and toffee.', 'Medium-full body with medium carbonation.', 'Semi-dry, malty finish.'),
       (015, 'Amber Ale', 'Rogue Ales', 'American Amber Ale', 'Amber', '53', '5.3', 'Caramel and toffee with light grass and citrus notes.', 'Strong hop profile up front (unusual for the style), followed by more traditional malt characters.', 'Medium body and carbonation', 'Bready and semi-dry.'),
	   (016, 'Amber Ale', 'Ale Alysum', 'Ambergeddon', 'Amber', '60', '6.8', 'Biscuity with a hint of caramel and booze. Faint citrus rind.', 'Toasted malts, light toffee sweetness with hints of orange resin.', 'Medium-full body and medium carbonation.', 'Hoppier and more herbal finish for the style.'),
       (017, 'Amber Ale', 'Saint Arnold Brewing Company', 'Amber Ale', 'Copper', '31', '5.5', 'Biscuits and crackers with pronounced hoppy herb sent.', 'Equally malty as it is hoppy.', 'Medium body with a slightly higher carbonation for the style. Slightly creamy texture.', 'Crisp and dry with the hops lingering longer than the malts.'),
       (018, 'Amber Ale', 'The Duck-Rabbit Crat Brewery', 'Amber Ale', 'Amber', 'N/A', '5.5', 'Subtle toasted malts, mineral water and herbal hops.', 'Roasted malts, brassy mineral water and grassy hops.', 'Medium body with low carbonation.', 'Slightly malty with grassy notes that linger.'),
       (019, 'Amber Ale', 'Dark Horse Brewing Comapny', 'Belgian-Style Amber Ale', 'Mahogany', '16', '5.5', 'Pungent with caramel and cherry/red berry notes. Slightly leathery.', 'Semi-sweet malts with a hint of cherry tart and hop bitterness.', 'Medium body and carbonation.	', 'Long and dry finish follows flavor profie.')
       

       
       
