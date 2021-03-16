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
                //Banner
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

                //Search
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

                //MainImg
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
                                colors: [mainColor, Colors.black12],
                                stops: [0.3, 1],
                                begin: FractionalOffset.bottomCenter,
                                end: FractionalOffset.topCenter),
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
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontFamily: 'Redressed'),
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
                ),
                SizedBox(
                  height: 15,
                ),

                //Gallery
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Artistas',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Redressed'),
                    ),
                    Text(
                      'Explorar',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Redressed'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FadeInImage.assetNetwork(
                          placeholder: 'assets/image/daft.jpg',
                          image:
                              'https://i.pinimg.com/originals/06/9c/cf/069ccf1458c6c3aab31ceb0374d67bbd.jpg',
                          width: size.width * 0.3,
                          height: size.width * 0.3,
                          fit: BoxFit.cover,
                        ),
                        FadeInImage.assetNetwork(
                          placeholder: 'assets/image/daft.jpg',
                          image:
                              'https://www.clubbingspain.com/imagenes/Daft-Punk-TRON-Legacy.jpg',
                          width: size.width * 0.3,
                          height: size.width * 0.3,
                          fit: BoxFit.cover,
                        ),
                        FadeInImage.assetNetwork(
                          placeholder: 'assets/image/daft.jpg',
                          image:
                              'https://rock101online.mx/wp-content/uploads/2020/12/tronr0ck-874x733.png',
                          width: size.width * 0.3,
                          height: size.width * 0.3,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: size.width * 0.1,
                      left: 10,
                      child: Container(
                        width: size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back_ios_outlined,
                              color: Colors.white,
                              size: 50,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                              size: 50,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),

                //Menu
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.person, color: Colors.deepPurple, size: 40,),
                    Icon(Icons.settings_rounded, color: Colors.deepPurple, size: 40,),
                    Icon(Icons.home, color: Colors.purple, size: 40,),
                    Icon(Icons.add_a_photo, color: Colors.deepPurple, size: 40,),
                    Icon(Icons.backup, color: Colors.deepPurple, size: 40,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
