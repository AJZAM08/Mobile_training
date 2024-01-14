import 'package:flutter/material.dart';
import 'package:prak_mobpro/component/grid_view.dart';
import 'package:prak_mobpro/component/my_widget.dart';
import 'package:prak_mobpro/pages/input_screen.dart';
import 'package:prak_mobpro/pages/login_page.dart';
import 'package:prak_mobpro/pages/profile_screen.dart';
// import 'package:prak_mobpro/pages/notification_screen.dart';
import 'package:prak_mobpro/pages/stock_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _searchController = TextEditingController();
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
            "Dashboard",
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
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>InputScreen()));
        },
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.deepOrange.shade700, Colors.orangeAccent.shade200],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    border: InputBorder.none,
                    fillColor:
                        Colors.transparent, // Set latar belakang transparan
                  ),
                  style: TextStyle(color: Colors.white),
                  controller: _searchController,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Expanded(
                child: GridDashboard(),
              )
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
                Row(
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
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
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
                            color: Colors.deepOrange, fontWeight: FontWeight.w500),
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
