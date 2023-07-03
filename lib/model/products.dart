class Product{

  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl
  });
  static const List<Product> products = [
    Product(
      name: 'Apple',
      price: 2.00,
      imageUrl: 'https://thumbs.dreamstime.com/z/red-apple-leaf-slice-white-background-29914331.jpg'
    ),
    Product(
        name: 'Orange',
        price: 2.00,
        imageUrl: 'https://thumbs.dreamstime.com/z/isolated-orange-fruit-slices-whole-two-white-clipping-path-66317053.jpg'
    ),
    Product(
        name: 'Pear',
        price: 2.00,
        imageUrl: 'https://thumbs.dreamstime.com/z/pear-green-leaves-22086306.jpg'
    ),
    Product(
        name: 'Mango',
        price: 2.00,
        imageUrl: 'https://thumbs.dreamstime.com/z/mango-slices-22209704.jpg'
    ),
    Product(
        name: 'Cashew',
        price: 2.00,
        imageUrl: 'https://thumbs.dreamstime.com/z/cashew-fruit-12407826.jpg'
    ),
    Product(
        name: 'Star Apple',
        price: 2.00,
        imageUrl: 'https://thumbs.dreamstime.com/z/star-apple-cut-half-white-background-isolated-99551522.jpg'
    ),
    Product(
        name: 'Pineapple',
        price: 2.00,
        imageUrl: 'https://thumbs.dreamstime.com/z/fresh-slice-pineapple-8507669.jpg'
    ),
    Product(
        name: 'Banana',
        price: 2.00,
        imageUrl: 'https://thumbs.dreamstime.com/z/banana-fruits-24642880.jpg'
    ),
    Product(
        name: 'Tangerine',
        price: 2.00,
        imageUrl: 'https://thumbs.dreamstime.com/z/fresh-whole-tangerine-some-slices-18216556.jpg'
    ),
    Product(
        name: 'Velvet Tamarind',
        price: 2.00,
        imageUrl: 'https://thumbs.dreamstime.com/z/velvet-tamarind-fruit-isolated-white-velvet-tamarind-fruit-isolated-white-background-139934922.jpg'
    ),
    Product(
        name: 'Water Melon',
        price: 2.00,
        imageUrl: 'https://thumbs.dreamstime.com/z/water-melon-cut-up-pieces-39106096.jpg'
    ),
    Product(
        name: 'Guava',
        price: 2.00,
        imageUrl: 'https://thumbs.dreamstime.com/z/guava-fruit-leaves-isolated-white-background-89872885.jpg'
    ),
  ];
}