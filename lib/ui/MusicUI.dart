import 'package:flutter/material.dart';
import 'package:ui2027399/main.dart';

class MusicUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final mainColor = Color.fromRGBO(25, 27, 40, 1);
    return Scaffold(
      backgroundColor: mainColor,
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Wellcome',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          'Radio ADSI',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.perm_scan_wifi_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.purple,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white.withOpacity(0.5),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Search in all',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.settings_rounded,
                            color: Colors.white.withOpacity(0.5)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        child: Image.asset(
                          'assets/image/daft.jpg',
                          height: size.height * 0.3,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: size.width * 0.9,
                          height: size.height * 0.1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [mainColor,Colors.black12],
                                stops: [0.3,1],
                                begin: FractionalOffset.bottomCenter,
                                end: FractionalOffset.topCenter
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  'Daft Punk',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '. . .',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
