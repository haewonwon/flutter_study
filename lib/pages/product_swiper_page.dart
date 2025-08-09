import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class ProductSwiperPage extends StatefulWidget {
  const ProductSwiperPage({super.key});

  @override
  State<ProductSwiperPage> createState() => _ProductSwiperPageState();
}

class _ProductSwiperPageState extends State<ProductSwiperPage> {
  final List<Product> _list = [
    Product(
      title: 'Apple',
      summary: 'Fresh red apple',
      price: 1200,
      desc: 'Delicious and juicy red apple from the farm',
      color: Colors.red,
      imageUrl: 'https://media.istockphoto.com/id/532048136/ko/%EC%82%AC%EC%A7%84/%EC%8B%A0%EC%84%A0%ED%95%9C-%EB%A0%88%EB%93%9C-%EC%82%AC%EA%B3%BC%EB%82%98%EB%AC%B4-%ED%9D%B0%EC%83%89-%EB%B0%94%ED%83%95%EC%97%90-%EA%B7%B8%EB%A6%BC%EC%9E%90%EC%99%80-%ED%81%B4%EB%A6%AC%ED%95%91-%EA%B2%BD%EB%A1%9C%EB%A5%BC-%ED%86%B5%ED%95%B4.jpg?s=1024x1024&w=is&k=20&c=tGdr_JYRW035yWh43Mcbbe-CDndzOt2l5QkDYV4LxZ0=',
    ),
    Product(
      title: 'Banana',
      summary: 'Sweet banana',
      price: 800,
      desc: 'Rich in potassium and perfect for breakfast',
      color: Colors.yellow,
      imageUrl: 'https://media.istockphoto.com/id/173242750/ko/%EC%82%AC%EC%A7%84/%EB%B0%94%EB%82%98%EB%82%98.jpg?s=1024x1024&w=is&k=20&c=BbODJ0cHKxGMGhwgHKZJTpfRtG4yIoq_3ZCbC5eVfhQ=',
    ),
    Product(
      title: 'Orange',
      summary: 'Citrus orange',
      price: 1500,
      desc: 'Vitamin C rich orange for healthy lifestyle',
      color: Colors.orange,
      imageUrl: 'https://media.istockphoto.com/id/185284489/ko/%EC%82%AC%EC%A7%84/%EC%98%A4%EB%A0%8C%EC%A7%80-%EA%B3%BC%EC%9D%BC.jpg?s=1024x1024&w=is&k=20&c=vkPbmM0qLPwHKBLkMdL2qZtjpKqYqZfKqnZjZKqYqZg=',
    ),
    Product(
      title: 'Grapes',
      summary: 'Seedless grapes',
      price: 2000,
      desc: 'Sweet and seedless grapes perfect for snacking',
      color: Colors.purple,
      imageUrl: 'https://media.istockphoto.com/id/803721418/ko/%EC%82%AC%EC%A7%84/%ED%8F%AC%EB%8F%84-%EA%B3%BC%EC%9D%BC.jpg?s=1024x1024&w=is&k=20&c=2Zq0qLPwHKBLkMdL2qZtjpKqYqZfKqnZjZKqYqZfKqn=',
    ),
    Product(
      title: 'Watermelon',
      summary: 'Large watermelon',
      price: 5000,
      desc: 'Perfect for summer, juicy and refreshing watermelon',
      color: Colors.green,
      imageUrl: 'https://media.istockphoto.com/id/1142192548/ko/%EC%82%AC%EC%A7%84/%EC%88%98%EB%B0%95.jpg?s=1024x1024&w=is&k=20&c=2Zq0qLPwHKBLkMdL2qZtjpKqYqZfKqnZjZKqYqZfKqn=',
    ),
    Product(
      title: 'Strawberry',
      summary: 'Fresh strawberry',
      price: 2500,
      desc: 'Sweet and sour strawberry rich in vitamin C',
      color: Colors.pink,
      imageUrl: 'https://media.istockphoto.com/id/1142192548/ko/%EC%82%AC%EC%A7%84/%EB%94%B8%EA%B8%B0.jpg?s=1024x1024&w=is&k=20&c=2Zq0qLPwHKBLkMdL2qZtjpKqYqZfKqnZjZKqYqZfKqn=',
    ),
    Product(
      title: 'Peach',
      summary: 'Soft peach',
      price: 1800,
      desc: 'Soft and fragrant peach with sweet taste',
      color: Colors.orange.shade300,
      imageUrl: 'https://media.istockphoto.com/id/1142192548/ko/%EC%82%AC%EC%A7%84/%EB%B3%B5%EC%88%AD%EC%95%84.jpg?s=1024x1024&w=is&k=20&c=2Zq0qLPwHKBLkMdL2qZtjpKqYqZfKqnZjZKqYqZfKqn=',
    ),
    Product(
      title: 'Mango',
      summary: 'Tropical mango',
      price: 3000,
      desc: 'Sweet tropical mango full of flavor',
      color: Colors.amber,
      imageUrl: 'https://media.istockphoto.com/id/1142192548/ko/%EC%82%AC%EC%A7%84/%EB%A7%9D%EA%B3%A0.jpg?s=1024x1024&w=is&k=20&c=2Zq0qLPwHKBLkMdL2qZtjpKqYqZfKqnZjZKqYqZfKqn=',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('상품 카드 스와이퍼'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: CardSwiper(
          cardBuilder: (context, index, horizontalOffsetPercentage, verticalOffsetPercentage) {
            final product = _list[index];
            
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          product.color.withOpacity(0.7),
                          product.color.withOpacity(0.3),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            product.imageUrl,
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: product.color.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Icon(
                                  Icons.image_not_supported,
                                  size: 50,
                                  color: product.color,
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          product.title,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          product.summary,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          '₩${product.price.toStringAsFixed(0)}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('${product.title}을(를) 장바구니에 담았습니다!'),
                                backgroundColor: product.color,
                              ),
                            );
                          },
                          icon: const Icon(Icons.shopping_cart),
                          label: const Text('장바구니에 담기'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: product.color,
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          cardsCount: _list.length,
        ),
      ),
    );
  }
}

class Product {
  final String title;
  final String summary;
  final int price;
  final String desc;
  final Color color;
  final String imageUrl;

  Product({
    required this.title,
    required this.summary,
    required this.price,
    required this.desc,
    required this.color,
    required this.imageUrl,
  });
}