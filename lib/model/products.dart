class Product{

  final String name;
  final String price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl
  });
  static const List<Product> products = [
    Product(
      name: 'Apple',
      price: '2.99',
      imageUrl: 'https://thumbs.dreamstime.com/z/red-apple-leaf-slice-white-background-29914331.jpg'
    ),
    Product(
        name: 'Orange',
        price: '2.99',
        imageUrl: 'https://thumbs.dreamstime.com/z/isolated-orange-fruit-slices-whole-two-white-clipping-path-66317053.jpg'
    ),
    Product(
        name: 'Pear',
        price: '2.99',
        imageUrl: 'https://thumbs.dreamstime.com/z/pear-green-leaves-22086306.jpg'
    ),
    Product(
        name: 'Mango',
        price: '2.99',
        imageUrl: 'https://thumbs.dreamstime.com/z/mango-slices-22209704.jpg'
    ),
    Product(
        name: 'Cashew',
        price: '2.99',
        imageUrl: 'https://thumbs.dreamstime.com/z/cashew-fruit-12407826.jpg'
    ),
    Product(
        name: 'Star Apple',
        price: '2.99',
        imageUrl: 'https://thumbs.dreamstime.com/z/star-apple-cut-half-white-background-isolated-99551522.jpg'
    ),
  ];
}