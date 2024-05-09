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
            price: 'Rp 1,399,000',
            imageUrl: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/23c5846f-40e4-48e9-b05d-737b97e90fec/sb-zoom-blazer-mid-skate-shoes-LVGq5c.png',
            color: Colors.purple,
          ),
          buildShoeItem(
            title: 'Nike Air Zoom Pegasus',
            subtitle: "Men's Road Running Shoes",
            price: 'Rp 1,999,000',
            imageUrl: 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/b4b289cb-1b06-40d9-9f88-8d309a40f2b8/custom-pegasus-trail-4-by-you.png',
            color: Colors.cyan,
          ),
          buildShoeItem(
            title: 'Nike ZoomX Vaporfly',
            subtitle: "Women's Road Racing Shoe",
            price: 'Rp 3,399,000',
            imageUrl: 'https://static.nike.com/a/images/t_default/c352f459-7930-4067-a51a-372df13b6ff2/vaporfly-3-womens-road-racing-shoes-4jJ4vQ.png',
            color: Colors.pink,
          ),
          buildShoeItem(
            title: 'Nike Air Force 1 S50',
            subtitle: "Older Kids' Shoe",
            price: 'Rp 1,449,000',
            imageUrl: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/c7c381f0-c78d-4934-bd73-b42b17529c35/air-force-1-lv8-older-shoes-cxt4p7.png',
            color: Colors.grey,
          ),
          buildShoeItem(
            title: 'Nike Waffle One',
            subtitle: "Women's Shoes",
            price: 'Rp 1,909,000',
            imageUrl: 'https://static.nike.com/a/images/t_default/8a32b0da-59ec-4c1a-8bcc-d7e7136fdaf5/waffle-debut-vintage-womens-shoes-rfRkv2.png',
            color: Colors.orange,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Jawaban No 1\n'
              'Perbedaan Native Development dan Hybrid Development\n'
              'Native Development:\n'
              '- Native development mencakup pengembangan aplikasi yang spesifik untuk platform tertentu, seperti iOS atau Android.\n'
              '- Aplikasi native ditulis menggunakan bahasa pemrograman dan alat pengembangan resmi dari platform target. Misalnya, untuk iOS, Anda akan menggunakan bahasa Swift atau Objective-C dengan Xcode sebagai alat pengembangan, sementara untuk Android, Anda akan menggunakan Java atau Kotlin dengan Android Studio.\n'
              '- Aplikasi native cenderung memiliki kinerja yang lebih baik karena mereka dioptimalkan untuk platform yang dituju dan menggunakan semua fitur dan fungsionalitas yang tersedia secara penuh.\n'
              '- Pengembangan native membutuhkan waktu dan biaya yang lebih tinggi karena Anda harus membuat dan memelihara kode terpisah untuk setiap platform.\n'
              'Hybrid Development:\n'
              '- Hybrid development melibatkan pengembangan aplikasi menggunakan teknologi web seperti HTML, CSS, dan JavaScript, dan kemudian memasukkannya ke dalam wrapper yang dapat dijalankan pada platform yang berbeda.\n'
              '- Dalam pengembangan hybrid, Anda menggunakan framework seperti React Native, Ionic, atau Xamarin. Ini memungkinkan Anda untuk menulis kode sekali dan menjalankannya di berbagai platform.\n'
              '- Aplikasi hybrid dapat memiliki waktu pengembangan yang lebih cepat dan biaya yang lebih rendah karena Anda dapat menggunakan satu basis kode untuk beberapa platform.\n'
              '- Namun, kinerja aplikasi hybrid mungkin tidak sebaik aplikasi native karena mereka tidak memiliki akses penuh ke fitur platform dan harus berjalan melalui lapisan abstraksi tambahan.',
              style: TextStyle(fontSize: 16),
            ),
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
          borderRadius: BorderRadius.circular(30),
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
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(height: 25), // Menambah jarak antara subtitle dan price
                  Text(
                    price,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(width: 16),
              Image.network(
                imageUrl,
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
