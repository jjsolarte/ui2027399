import 'package:flutter/material.dart';

class LinearUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Container(
          width: size.width*0.9,
          height: size.height*0.8,
          color: Colors.yellowAccent,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    )
                ),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.keyboard),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}