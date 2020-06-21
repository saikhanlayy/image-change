import 'package:flutter/material.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

String image="images/bg.jpg";

int number=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: new Text("Flutter App"),
),
body: Center(
  child:   Container(
    color: Colors.white10,
    width: 400,
    height: 400,

  child: Column(
    children: <Widget>[
      Container(
        width: 300,
        height: 300,
        child: Image.asset(image)),
      new RaisedButton(
        child: new Text("Change"),
        color: Colors.redAccent,

        onPressed: (){
          setState(() {
           
            number+=1;

            if(number==3){
              number=1;
            }

            print(number);

            if(number==1){
              image="images/bg.jpg";
            }

            if(number==2){
              image="images/avatar.png";
            }

          });
        })
    ],
  ),

  ),
),

    );

  }

  }