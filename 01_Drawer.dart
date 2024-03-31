import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Title(color: Colors.black, child: Text("Clock App")),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xfff5f3ff),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    ClipRRect(
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Color(0xff674aef),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      // ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Karan Padaliya",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "karan.padaliya@gmail.com",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          size: 28,
                          color: Colors.black.withOpacity(0.7),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.white.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.file_copy_rounded,
                            size: 25,
                            color: Colors.black.withOpacity(0.6),
                          ),
                          SizedBox(width: 25),
                          Text(
                            "My Files",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.people_alt_sharp,
                            size: 25,
                            color: Colors.black.withOpacity(0.6),
                          ),
                          SizedBox(width: 25),
                          Text(
                            "Shared with me",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            size: 25,
                            color: Colors.black.withOpacity(0.6),
                          ),
                          SizedBox(width: 25),
                          Text(
                            "Starred",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.timer,
                            size: 25,
                            color: Colors.black.withOpacity(0.6),
                          ),
                          SizedBox(width: 25),
                          Text(
                            "Recent",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.offline_pin_rounded,
                            size: 25,
                            color: Colors.black.withOpacity(0.6),
                          ),
                          SizedBox(width: 25),
                          Text(
                            "Offline",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.upload,
                            size: 25,
                            color: Colors.black.withOpacity(0.6),
                          ),
                          SizedBox(width: 25),
                          Text(
                            "Uploads",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.backup,
                            size: 25,
                            color: Colors.black.withOpacity(0.6),
                          ),
                          SizedBox(width: 25),
                          Text(
                            "Backups",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.delete,
                            size: 25,
                            color: Colors.black.withOpacity(0.6),
                          ),
                          SizedBox(width: 25),
                          Text(
                            "Trash",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
