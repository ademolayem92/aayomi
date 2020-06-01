import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
final TextEditingController _controller = TextEditingController();

class _MyAppState extends State<MyApp> {
  FocusNode myFocusNode;
// focusNode function was initiated
  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            AnimatedContainer(
              width:  40,
              child: Image.asset('images/heartBeat.png'),
              duration: Duration(milliseconds: 500),
            ),
          ],
        ),
    CircleAvatar(
    radius: 50.0,
    backgroundImage: AssetImage('images/ayomini.jpg'),
    ),
    Text('Adesanya Anuoluwapo',
    style: TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 25.0,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    ),
    ),
    Text('WAREHOUSE SUPERVISOR',
    style: TextStyle(
    fontFamily: 'Caveat',
    color: Colors.teal.shade100,
    fontSize: 15.0,
    letterSpacing: 2.5,
    fontWeight: FontWeight.bold,
    ),),
    SizedBox(height: 15.0,
    width: 150.0,
    child: Divider(
    color: Colors.teal.shade100,
    ),),
    Card(
    margin: EdgeInsets.symmetric(vertical: 15.0,
    horizontal: 25.0),
    child: ListTile(
    leading: Icon(Icons.phone,
    color: Colors.teal,),
    title: EditableText(
      focusNode: myFocusNode, // I import the fucnction to create a focusNode
                              //and pass it here it here
      cursorColor: Colors.amber,
      controller: _controller,
      enableInteractiveSelection: true,
      expands: false,
      forceLine: true,
      readOnly: false,
      style: TextStyle(
    fontFamily: 'Caveat',
    color: Colors.teal.shade900,
    fontSize: 15.0,
    ), backgroundCursorColor: Colors.teal
      ,)
    ,
    )
    ),
    Card(
    margin: EdgeInsets.symmetric(vertical: 20.0,
    horizontal: 25.0),
    child: ListTile(
    leading: Icon(Icons.email,
    color: Colors.teal,
    ),
    title: Text(
    'adesanyaharnu@gmail.com',
    style: TextStyle(
    fontSize: 18.0,
    color: Colors.teal.shade900,
    fontFamily: 'Caveat')
    ),
    )
    ),
          Row(crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0,),
                width:  40,
                child: Image.asset('images/heartBeat.png'),

              ),
            ],
          ),

        ],
    )
    ),
    ),
    );
  }
}




