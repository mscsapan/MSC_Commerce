class Favorite {
  final double price;
  final String brand;
  final String name;
  final int size;
  final String color;
  final String image;

  Favorite({
    required this.price,
    required this.brand,
    required this.name,
    required this.size,
    required this.color,
    required this.image,
  });
}

final List<Favorite> getFavorite = [
  Favorite(
    price: 545.5,
    brand: 'Valentino',
    name: 'Go Logo Print Shirt',
    size: 44,
    color: 'White',
    image: 'assets/product/image01.png',
  ),
  Favorite(
    price: 1245.0,
    brand: 'Gucci',
    name: 'Monogram print jacket',
    size: 44,
    color: 'Black',
    image: 'assets/product/image02.png',
  ),
  Favorite(
    price: 545.5,
    brand: 'Valentino',
    name: 'Go Logo Print Shirt',
    size: 44,
    color: 'White',
    image: 'assets/product/image03.png',
  ),
  Favorite(
    price: 1245.0,
    brand: 'Gucci',
    name: 'Monogram print jacket',
    size: 44,
    color: 'Black',
    image: 'assets/product/image04.png',
  ),
];
