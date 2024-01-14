import 'package:flutter/material.dart';
import 'package:prak_mobpro/component/my_button.dart';
import 'package:prak_mobpro/pages/home_screen.dart';
import 'package:prak_mobpro/pages/login_page.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void popup(){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Detail'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Nama'),
                onChanged: (value) {
                  // editedProductName = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
                onChanged: (value) {
                  // editedProductName = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                onChanged: (value) {
                  // editedProductDescription = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Alamat'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  // editedProductQuantity = int.tryParse(value) ?? 0;
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
    return SafeArea(
      child: Scaffold(
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
          title: const Text(
            'PROFILE',
            style: TextStyle(color: Colors.white),
          ),
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
          popup();
        },
        backgroundColor: Colors.orange,
        child: Icon(Icons.edit, color: Colors.white,),
        ),
        body: ListView(
          children: [Column(
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
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 150, color: Colors.white),
                    Text(
                      "STATUS",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    Text(
                      "AZZAHRA NASYIFA",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    MenuProfileList(
                        title: 'Change Email',
                        icon: Icons.email,
                        endIcon: false,
                        ),
                    Divider(
                      color: Colors.grey.withAlpha(155),
          
                      // height: 0.5,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    const SizedBox(height: 10),
                    MenuProfileList(
                        title: 'Change Password',
                        icon: Icons.key,
                                                endIcon: false,

                        ),
                    Divider(
                      color: Colors.grey.withAlpha(155),
          
                      // height: 0.5,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    const SizedBox(height: 10),
                    MenuProfileList(
                        title: 'Alamat',
                        icon: Icons.map,
                        endIcon: false,

                        
                      ),
                    Divider(
                      color: Colors.grey.withAlpha(155),
          
                      // height: 0.5,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: MyButton(onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginPage()));
                      }, text: 'Logout'),
                    )
                  ],
                ),
              )
            ],
          ),
          ]
        ),
        
      ),
    );
  }
}

class MenuProfileList extends StatelessWidget {
  const MenuProfileList(
      {Key? key,
      required this.title,
      required this.icon,
      // required this.onPress,
      this.endIcon = true,
      this.textColor})
      : super(key: key);

  final String title;
  final IconData icon;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.transparent,
          ),
          child: Icon(
            icon,
            color: Colors.deepOrange,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(color: textColor),
        ),
        trailing: endIcon
            ? Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: const Icon(
                  Icons.edit,
                  color: Colors.grey,
                ))
            : null);
  }
}
