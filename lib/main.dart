import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      // appBar: AppBar(
      //   //title: Text('Flutter TextField Example'),
      //   backgroundColor: Colors.black,
      // ),

      body: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Center(
                    child: Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(height: 20),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 55,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/space.png'),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    //obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white, // width: 2
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(13))),
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    //obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Location',
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    // obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                      ),
                      border: OutlineInputBorder(),
                      // contentPadding: EdgeInsets.symmetric(vertical: 30),
                      labelText: 'Bio',
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter Password',
                    ),
                    maxLines: 4, // <-- SEE HERE
                    minLines: 1,
                  ),
                ),
                Text(
                  'Volunteer Information',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Flexible(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          //obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13)),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Volunteer Hours',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Enter Password',
                          ),
                        ),
                      ),
                    ),
                    new Flexible(
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          //obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13)),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Money Donated',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Enter Password',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  textColor: Color.fromARGB(255, 240, 229, 229),
                  //color: Colors.white70,

                  child: Text('Save',
                      style: TextStyle(color: Colors.black, fontSize: 17)),
                  onPressed: () {},
                ),
              ],
            ),
          )),
    );
  }
}



// new Positioned(
//                   top: 0.0,
//                   left: 0.0,
//                   right: 0.0,
//                   child: AppBar(
//                     title: Text(''),// You can add title here
//                     leading: new IconButton(
//                       icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
//                       onPressed: () => Navigator.of(context).pop(),
//                     ),
//                     backgroundColor: Colors.blue.withOpacity(0.3), //You can make this transparent
//                     elevation: 0.0, //No shadow
//                   ),),

// https://stackoverflow.com/questions/59362570/how-to-add-back-button-without-using-appbar-in-flutter
