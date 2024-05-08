import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Sepatu',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ShoesList(),
    );
  }
}

class ShoesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(1),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://tse3.mm.bing.net/th?id=OIP.GlIuUj-GYrRL_G8WvZ3YagHaHw&pid=Api&P=0&h=180',
              ),
              radius: 50,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          buildShoeItem(
            title: 'Nike SB Zoom Blazer',
            subtitle: 'Mid Premium',
            price: '28,795',
            imageUrl: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/23c5846f-40e4-48e9-b05d-737b97e90fec/sb-zoom-blazer-mid-skate-shoes-LVGq5c.png',
            color: Colors.purple,
          ),
          buildShoeItem(
            title: 'Nike Air Zoom Pegasus',
            subtitle: "Men's Road Running Shoes",
            price: '29,995',
            imageUrl: 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/b4b289cb-1b06-40d9-9f88-8d309a40f2b8/custom-pegasus-trail-4-by-you.png',
            color: Colors.cyan,
          ),
          buildShoeItem(
            title: 'Nike ZoomX Vaporfly',
            subtitle: "Men's Road Racing Shoe",
            price: '219,695',
            imageUrl: 'https://static.nike.com/a/images/t_default/c352f459-7930-4067-a51a-372df13b6ff2/vaporfly-3-womens-road-racing-shoes-4jJ4vQ.png',
            color: Colors.pink,
          ),
          buildShoeItem(
            title: 'Nike Air Force 1 S50',
            subtitle: "Older Kids' Shoe",
            price: '26,295',
            imageUrl: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/c7c381f0-c78d-4934-bd73-b42b17529c35/air-force-1-lv8-older-shoes-cxt4p7.png',
            color: Colors.grey,
          ),
          buildShoeItem(
            title: 'Nike Waffle One',
            subtitle: "Men's Shoes",
            price: '28,295',
            imageUrl: 'https://static.nike.com/a/images/t_default/8a32b0da-59ec-4c1a-8bcc-d7e7136fdaf5/waffle-debut-vintage-womens-shoes-rfRkv2.png',
            color: Colors.orange,
          ),
        ],
      ),
    );
  }

  Widget buildShoeItem({
    required String title,
    required String subtitle,
    required String price,
    required String imageUrl,
    required Color color,
  }) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 25), // Menambah jarak antara subtitle dan price
                  
                  Text(
                    price,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(width: 16),
              Image(
              image: NetworkImage(imageUrl),
              width: 200,
              height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
