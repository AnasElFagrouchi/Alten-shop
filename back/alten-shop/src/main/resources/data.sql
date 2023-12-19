DROP DATABASE IF EXISTS alten_shop;

CREATE DATABASE alten_shop;

USE alten_shop;

DROP TABLE IF EXISTS Product;

CREATE TABLE Product (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(20),
    name VARCHAR(50),
    description TEXT,
    image VARCHAR(50),
    price DOUBLE,
    category enum ('ACCESSORIES', 'CLOTHING', 'ELECTRONICS', 'FITNESS'),
    quantity INT,
    status enum ('IN_STOCK', 'OUT_OF_STOCK', 'LOW_STOCK'),
    rating INT
);

INSERT INTO product (code, name, description, image, price, category, quantity, status, rating)
VALUES
    ('f230fh0g3', 'Bamboo Watch', 'Product Description', 'bamboo-watch.jpg', 65, 'ACCESSORIES', 24, 'IN_STOCK', 5),
    ('nvklal433', 'Black Watch', 'Product Description', 'black-watch.jpg', 72, 'ACCESSORIES', 61, 'IN_STOCK', 4),
    ('zz21cz3c1', 'Blue Band', 'Product Description', 'blue-band.jpg', 79, 'FITNESS', 2, 'LOW_STOCK', 3),
    ('244wgerg2', 'Blue T-Shirt', 'Product Description', 'blue-t-shirt.jpg', 29, 'CLOTHING', 25, 'IN_STOCK', 5),
    ('h456wer53', 'Bracelet', 'Product Description', 'bracelet.jpg', 15, 'ACCESSORIES', 73, 'IN_STOCK', 4),
    ('av2231fwg', 'Brown Purse', 'Product Description', 'brown-purse.jpg', 120, 'ACCESSORIES', 0, 'OUT_OF_STOCK', 4),
    ('bib36pfvm', 'Chakra Bracelet', 'Product Description', 'chakra-bracelet.jpg', 32, 'ACCESSORIES', 5, 'LOW_STOCK', 3),
    ('mbvjkgip5', 'Galaxy Earrings', 'Product Description', 'galaxy-earrings.jpg', 34, 'ACCESSORIES', 23, 'IN_STOCK', 5),
    ('vbb124btr', 'Game Controller', 'Product Description', 'game-controller.jpg', 99, 'ELECTRONICS', 2, 'LOW_STOCK', 4),
    ('cm230f032', 'Gaming Set', 'Product Description', 'gaming-set.jpg', 299, 'ELECTRONICS', 63, 'IN_STOCK', 3),
    ('plb34234v', 'Gold Phone Case', 'Product Description', 'gold-phone-case.jpg', 24, 'ACCESSORIES', 0, 'OUT_OF_STOCK', 4),
    ('4920nnc2d', 'Green Earbuds', 'Product Description', 'green-earbuds.jpg', 89, 'ELECTRONICS', 23, 'IN_STOCK', 4),
    ('250vm23cc', 'Green T-Shirt', 'Product Description', 'green-t-shirt.jpg', 49, 'CLOTHING', 74, 'IN_STOCK', 5),
    ('fldsmn31b', 'Grey T-Shirt', 'Product Description', 'grey-t-shirt.jpg', 48, 'CLOTHING', 0, 'OUT_OF_STOCK', 3),
    ('waas1x2as', 'Headphones', 'Product Description', 'headphones.jpg', 175, 'ELECTRONICS', 8, 'LOW_STOCK', 5),
    ('vb34btbg5', 'Light Green T-Shirt', 'Product Description', 'light-green-t-shirt.jpg', 49, 'CLOTHING', 34, 'IN_STOCK', 4),
    ('k8l6j58jl', 'Lime Band', 'Product Description', 'lime-band.jpg', 79, 'FITNESS', 12, 'IN_STOCK', 3),
    ('v435nn85n', 'Mini Speakers', 'Product Description', 'mini-speakers.jpg', 85, 'CLOTHING', 42, 'IN_STOCK', 4),
    ('09zx9c0zc', 'Painted Phone Case', 'Product Description', 'painted-phone-case.jpg', 56, 'ACCESSORIES', 41, 'IN_STOCK', 5),
    ('mnb5mb2m5', 'Pink Band', 'Product Description', 'pink-band.jpg', 79, 'FITNESS', 63, 'IN_STOCK', 4),
    ('r23fwf2w3', 'Pink Purse', 'Product Description', 'pink-purse.jpg', 110, 'ACCESSORIES', 0, 'OUT_OF_STOCK', 4),
    ('pxpzczo23', 'Purple Band', 'Product Description', 'purple-band.jpg', 79, 'FITNESS', 6, 'LOW_STOCK', 3),
    ('2c42cb5cb', 'Purple Gemstone Necklace', 'Product Description', 'purple-gemstone-necklace.jpg', 45, 'ACCESSORIES', 62, 'IN_STOCK', 4),
    ('5k43kkk23', 'Purple T-Shirt', 'Product Description', 'purple-t-shirt.jpg', 49, 'CLOTHING', 2, 'LOW_STOCK', 5),
    ('lm2tny2k4', 'Shoes', 'Product Description', 'shoes.jpg', 64, 'CLOTHING', 0, 'IN_STOCK', 4),
    ('nbm5mv45n', 'Sneakers', 'Product Description', 'sneakers.jpg', 78, 'CLOTHING', 52, 'IN_STOCK', 4),
    ('zx23zc42c', 'Teal T-Shirt', 'Product Description', 'teal-t-shirt.jpg', 49, 'CLOTHING', 3, 'LOW_STOCK', 3),
    ('acvx872gc', 'Yellow Earbuds', 'Product Description', 'yellow-earbuds.jpg', 89, 'ELECTRONICS', 35, 'IN_STOCK', 3),
    ('tx125ck42', 'Yoga Mat', 'Product Description', 'yoga-mat.jpg', 20, 'FITNESS', 15, 'IN_STOCK', 5),
    ('gwuby345v', 'Yoga Set', 'Product Description', 'yoga-set.jpg', 20, 'FITNESS', 25, 'IN_STOCK', 8);