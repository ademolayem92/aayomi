import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
final TextEditingController _controller = TextEditingController();
final FocusNode _focusNode = FocusNode(canRequestFocus: true);
const TextInputType _textInputType = TextInputType.numberWithOptions(
    signed: false,
    decimal: false);
final TextEditingController _controllerTwo = TextEditingController();
final FocusNode _focusNodeTwo = FocusNode(canRequestFocus: true);


class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
        children: <Widget>[
             Center(
               child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            AnimatedContainer(
                  width:  40,
                  child: Image.asset('images/heartBeat.png'),
                  duration: Duration(milliseconds: 500),
            ),
          ],
        ),
             ),

           Center(
             child: Container(
                  child: CircleAvatar(
    radius: 50.0,
    backgroundImage: AssetImage('images/ayomini.jpg'),
    ),
              ),
           ),
             Center(
               child: Container(
                 child: Text('Adesanya Anuoluwapo',
    style: TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 25.0,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    ),
    ),
               ),
             ),
              Center(
                child: Container(
                  child: Text('WAREHOUSE SUPERVISOR',
    style: TextStyle(
    fontFamily: 'Caveat',
    color: Colors.teal.shade100,
    fontSize: 15.0,
    letterSpacing: 2.5,
    fontWeight: FontWeight.bold,
    ),),),
              ),


              Center(
                child: SizedBox(height: 30.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                  ),
              ),

           Card(
    margin: EdgeInsets.symmetric(vertical: 20.0,
    horizontal: 25.0),
                  child: ListTile(
                 leading: Icon(Icons.phone,
                  color: Colors.teal,),
                 title: EditableText(
      focusNode: _focusNode,// I import the function to create a
                   // focusNode
                                //and pass it here it here
      cursorColor: Colors.amber,
      controller: _controller, //obscureText:(bool) is used to hide
                   // text
      enableInteractiveSelection: true,
      toolbarOptions: const ToolbarOptions(copy: true,cut: true,
          paste: true,selectAll: true),
      autocorrect: true,
      keyboardType: _textInputType,
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
      horizontal: 25.0), child: ListTile(
      leading: Icon(Icons.email,
      color: Colors.teal,
      ),
      title: EditableText(
          maxLines: 1,
          minLines: null,
          focusNode: _focusNodeTwo,
          cursorColor: Colors.amber,
          forceLine: true,
          controller: _controllerTwo,
          backgroundCursorColor: Colors.teal,
      style: TextStyle(
      fontSize: 18.0,
      color: Colors.teal.shade900,
      fontFamily: 'Caveat')
      ),
      )
      ),

          Center(
            child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    child: AnimatedContainer(
                      margin: EdgeInsets.fromLTRB(10.0, 10.0,90.0, 10.0,),
                      duration: Duration(milliseconds: 500),
                      width:  40,
                      child: Image.asset('images/heartBeat.png'),

                    ),

                  ),
                    Container(
                      child: AnimatedContainer(
                      margin: EdgeInsets.fromLTRB(40.0, 5.0, 10.0, 10.0,),
                      duration: Duration(seconds: 10),
                      width:  100,
                      child: Image.asset('images/heartBeat.png'),


                    ),
                  ),

                ],
              ),
          ),


        ],
    )
    ),
    ),
    );
  }
}


