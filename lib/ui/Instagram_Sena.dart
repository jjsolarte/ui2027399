import 'package:flutter/material.dart';

class InstagramSena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('instagram'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.camera),
                    radius: 50,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '650',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'posts',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '650',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'followers',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '650',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'following',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: size.height * 0.04,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: Text(
                                        'Follow',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                      height: size.height * 0.04,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombre del Perfil',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Descripción del perfil',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Love Animals',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Escrito con mucho amor',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: size.width * 0.9,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Historia',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Historia',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Historia',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: size.width * 0.7,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.book_online,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Icon(
                      Icons.book_online,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Icon(
                      Icons.book_online,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: size.width * 0.9,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
