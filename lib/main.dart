import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyCard(),
  ));
}
  class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {

  int addToCard = 0;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("ID Card"),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              addToCard += 1;
            });
          },
          child: Icon(Icons.add, color: Colors.grey[800],),
          backgroundColor: Colors.amber[300],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                 backgroundImage: NetworkImage('https://i.pinimg.com/originals/29/5f/3f/295f3f78f8de8958e49dbfa94e7f05bc.jpg'),
                  radius: 50,
                ),
              ),
              Divider(
                height: 40,
                color: Colors.amber[400],
              ),
              SizedBox(height: 20,),
              Text(
                'Name',
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                'Muhammad Uzair',
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber[500],
                ),
              ),
              SizedBox(height: 40,),
              Text(
                'Enrollment ID',
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                '02-134171-061',
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber[500],
                ),
              ),
              SizedBox(height: 40,),
              Text(
                'Add to Card',
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                '$addToCard',
                style: TextStyle(
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber[500],
                ),
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                Icon(
                  Icons.email,
                    color: Colors.grey[400],
                ),
                  SizedBox(width: 10,),
                  Text(
                      "Uzairsuleman786@gmail.com",
                    style: TextStyle(
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal,
                      color: Colors.amber[500],
                      fontSize: 18,
                    ),
                  ),
              ],
              ),
            ],
          ),
        ),
      );
    }
}



