import 'package:flutter/material.dart';
import 'package:prak_mobpro/component/my_button.dart';
import 'package:prak_mobpro/component/my_input_field.dart';
import 'package:prak_mobpro/component/my_widget.dart';
import 'package:prak_mobpro/pages/home_screen.dart';
import 'package:prak_mobpro/pages/login_page.dart';
import 'package:prak_mobpro/pages/profile_screen.dart';
import 'package:prak_mobpro/pages/stock_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(builder: (context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    icon: const Icon(Icons.menu, color: Colors.deepOrange)),
              ],
            );
          }),
          title: const Text(
            "INPUT BARANG",
            style: TextStyle(
              color: Colors.deepOrange,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.deepOrange,
                )),
            const SizedBox(
              width: 5,
            )
          ],
        ),
        drawer: _myDrawer(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              //nama barang
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Nama Barang",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),

              const MyInputField(
                hintText: "Masukkan Nama Barang",
                obscureText: false,
                icon: Icon(
                  Icons.card_giftcard,
                  color: Colors.deepOrange,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //Kode barang
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Kode Barang",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),

              const MyInputField(
                hintText: "Masukkan Kode Barang",
                obscureText: false,
                icon: Icon(
                  Icons.tag,
                  color: Colors.deepOrange,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //Jumlah barang
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Jumlah Barang",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),

              const MyInputField(
                hintText: "Masukkan Jumlah Barang",
                obscureText: false,
                icon: Icon(
                  Icons.all_inclusive,
                  color: Colors.deepOrange,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //Expired barang
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Expired Date",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),

              const MyInputField(
                hintText: "Masukkan Expired Date",
                obscureText: false,
                icon: Icon(
                  Icons.close,
                  color: Colors.deepOrange,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //Gambar barang
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Pilih Gambar",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),

              const MyInputField(
                hintText: "Masukkan Gambar",
                obscureText: false,
                icon: Icon(
                  Icons.image,
                  color: Colors.deepOrange,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              const SizedBox(
                height: 20,
              ),

              MyButton(onTap: () {}, text: "Input Data")
            ],
          ),
        ),
      ),
    );
  }

  Drawer _myDrawer(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width, // Lebar drawer
      backgroundColor: Colors.deepOrange.shade800,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.deepOrange.shade600, Colors.orangeAccent.shade200],
          ),
        ),
        child: Column(
          children: [
            //header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () => _scaffoldKey.currentState?.closeDrawer(),
                      icon: const Icon(
                        Icons.close_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.notifications, color: Colors.white),
                    ),
                    const SizedBox(width: 10),
                  ],
                )
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            //header drawer

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 10),

                    //nanti ganti jadi foto profile
                    Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 50,
                    ),

                    SizedBox(
                      width: 5,
                    ),

                    //status dan nama
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "STATUS",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "AZZAHRA NASYIFA",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const ProfileScreen()));
                      },
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ],
            ),

            //garis
            Divider(
              color: Colors.white.withAlpha(155),
              // height: 0.5,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),

            const SizedBox(
              height: 5,
            ),
            //menu

            //menu dashboard
            ListTile(
              leading: const Icon(
                Icons.dashboard,
                color: Colors.white,
              ),
              title: const Text(
                "Dashboard",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
              },
            ),

            //menu input barang
            ListTile(
              leading: const Icon(
                Icons.input,
                color: Colors.white,
              ),
              title: const Text(
                "Input Barang",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const InputScreen()));
              },
            ),

            //menu stock barang
            ListTile(
              leading: const Icon(
                Icons.card_giftcard,
                color: Colors.white,
              ),
              title: const Text(
                "Stock Barang",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const StockScreen()));
              },
            ),

            //garis
            Divider(
              color: Colors.white.withAlpha(155),

              // height: 0.5,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),

            //menu lain

            //menu lainya
            // ListTile(
            //   leading: const Icon(
            //     Icons.more_horiz,
            //     color: Colors.white,
            //   ),
            //   title: const Text(
            //     "Menu Lainnya",
            //     style: TextStyle(
            //         color: Colors.white, fontWeight: FontWeight.normal),
            //   ),
            //   onTap: () {},
            // ),

            MyWidget(),

            const SizedBox(
              height: 25,
            ),

            //logout
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                  height: 36,
                  width: 100,
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.logout, color: Colors.deepOrange),
                      Text(
                        "Logout",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
