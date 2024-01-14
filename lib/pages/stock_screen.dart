import 'package:flutter/material.dart';
import 'package:prak_mobpro/pages/home_screen.dart';

class StockScreen extends StatefulWidget {
  const StockScreen({super.key});

  @override
  State<StockScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<StockScreen> {
String editedProductName = '';
  String editedProductDescription = '';
  int editedProductQuantity = 0;
  void _showEditPopup() {
    // Implementasikan logika pop up edit di sini
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Detail Produk'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Nama Barang'),
                onChanged: (value) {
                  editedProductName = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Deskripsi'),
                onChanged: (value) {
                  editedProductDescription = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Jumlah'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  editedProductQuantity = int.tryParse(value) ?? 0;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implementasikan logika penyimpanan di sini
                // Setelah penyimpanan selesai, panggil setState untuk memperbarui tampilan
                // setState(() {
                //   // Update state
                // });
                Navigator.of(context).pop();
              },
              child: Text('Simpan'),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: ((context) => const HomeScreen())),
            );
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
        ),
        centerTitle: true,
        elevation: 0,
        title: const Text('STOCK BARANG', style: TextStyle(color: Colors.white),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepOrange.shade700,
                Colors.orangeAccent.shade200
              ], // Atur warna sesuai keinginan
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        _showEditPopup();
      },
      child: Icon(Icons.edit, color: Colors.white,),
      backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [
                    Colors.deepOrange.shade700,
                    Colors.orangeAccent.shade200
                  ],
                )),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_circle_left_rounded,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 150,
                  width: 225,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_circle_right_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyProductDetails(
                  productName: 'Sepatu',
                  productDescription: 'Sepatu olahraga dengan desain modern.',
                  productQuantity: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyProductDetails extends StatefulWidget {
  String productName;
  String productDescription;
  int productQuantity;

  MyProductDetails({
    Key? key,
    required this.productName,
    required this.productDescription,
    required this.productQuantity,
  }) : super(key: key);

  @override
  _MyProductDetailsState createState() => _MyProductDetailsState();
}

class _MyProductDetailsState extends State<MyProductDetails> {
  String editedProductName = '';
  String editedProductDescription = '';
  int editedProductQuantity = 0;

  // void _showEditPopup() {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('Edit Detail Produk'),
  //         content: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             TextField(
  //               decoration: InputDecoration(labelText: 'Nama Barang'),
  //               onChanged: (value) {
  //                 editedProductName = value;
  //               },
  //             ),
  //             TextField(
  //               decoration: InputDecoration(labelText: 'Deskripsi'),
  //               onChanged: (value) {
  //                 editedProductDescription = value;
  //               },
  //             ),
  //             TextField(
  //               decoration: InputDecoration(labelText: 'Jumlah'),
  //               keyboardType: TextInputType.number,
  //               onChanged: (value) {
  //                 editedProductQuantity = int.tryParse(value) ?? 0;
  //               },
  //             ),
  //           ],
  //         ),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: Text('Batal'),
  //           ),
  //           ElevatedButton(
  //             onPressed: () {
  //               // Implementasikan logika penyimpanan di sini
  //               // Setelah penyimpanan selesai, panggil setState untuk memperbarui tampilan
  //               setState(() {
  //                 widget.productName = editedProductName;
  //                 widget.productDescription = editedProductDescription;
  //                 widget.productQuantity = editedProductQuantity;
  //               });
  //               Navigator.of(context).pop();
  //             },
  //             child: Text('Simpan'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama Barang',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                widget.productName,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Deskripsi',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                widget.productDescription,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Jumlah',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                widget.productQuantity.toString(),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              
            ],
          ),
        ),
      ),
    );
  }
}