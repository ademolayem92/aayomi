import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(home: MyApp(),));
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
final TextEditingController _controller = TextEditingController();
final FocusNode _focusNode = FocusNode(canRequestFocus: true);
final TextEditingController _controllerTwo = TextEditingController();
final FocusNode _focusNodeTwo = FocusNode(canRequestFocus: true);
final _formkey = GlobalKey<FormState>();
final _formkey2 = GlobalKey<FormState>();

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

class _MyAppState extends State<MyApp> {
  Future navigateToMyLove(context) async{
    Navigator.push(context, MaterialPageRoute(builder: (context)=>
        MyLove()));
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
        children: <Widget>[
             Center(
               child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            AnimatedContainer(
              curve: Curves.linear,
                  width:  40,
                  child: Image.asset('images/heartBeat.png',
                  colorBlendMode: BlendMode.darken,),
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
    color: Colors.teal,
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
    color: Colors.teal,
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
      horizontal: 25.0), child: ListTile(
      leading: Icon(Icons.email,
      color: Colors.teal,
      ),
      title: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Form(key: _formkey2,
          child: TextFormField(
              maxLines: 1,
              minLines: null,
              focusNode: _focusNodeTwo,
              cursorColor: Colors.white30,
              controller: _controllerTwo,
            decoration: InputDecoration(
             // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.tealAccent)),
              //to put boarder in the whole textField.
              //prefixIcon: used to put icon like email icon before the text.
                hintText: 'Email',
            ),
                autovalidate: false,
              validator: (input) => input.isValidEmail() ? null : "Check your email",

          style: TextStyle(

          fontSize: 20.0,
          color: Colors.teal.shade900,
          fontFamily: 'Caveat')
          ),
        ),
      ),
      )
      ),
          Card(
              margin: EdgeInsets.symmetric(vertical: 20.0,
                  horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.phone,
                  color: Colors.teal,),
                title: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Form(key: _formkey,
                    child: TextFormField(
                      focusNode: _focusNode,// I import the function to create a
                      // focusNode
                      //and pass it here it here
                      cursorColor: Colors.white30,
                      controller: _controller, //obscureText:(bool) is used to hide
                      // text
                      enableInteractiveSelection: true,
                      toolbarOptions: const ToolbarOptions(copy: true,cut: true,
                          paste: true,selectAll: true),
                      autocorrect: true,
                      keyboardType: TextInputType.phone,
                      expands: false,
                      readOnly: false,
                      autovalidate: false,
                      style: TextStyle(
                        fontFamily: 'Caveat',
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      ), decoration: InputDecoration(
                      hintText: 'Phone Number',
                    ),
                      textAlign:TextAlign.start,
                      validator: (value) {
                        if (!(value.length == 14) || value.isEmpty) {
                          return 'wrong password';
                        }
                        return null;
                      },
                      obscureText: true,
                    ),
                  ),
                )
                ,
              )
          ),

          Container(margin: EdgeInsets.symmetric(vertical: 5, horizontal: 70),
            child: RaisedButton(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.blue),
            ),
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              color: Colors.tealAccent,

              onPressed: (){
                if (_formkey.currentState.validate()) {
                  navigateToMyLove(context);
                }
              },
              child: Text('Log in',
                style: TextStyle(fontSize: 20,

                    color: Colors.blue),
                  ),
            ),
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
                      width:  80,
                      child: Image.asset('images/heartBeat.png'),


                    ),
                  ),



                ],
              ),
          ),


        ],
    )
    ),
    );

  }
}

class MyLove extends StatefulWidget {
  @override
  _MyLoveState createState() => _MyLoveState();
}

class _MyLoveState extends State<MyLove> {
  Future navigateToMyApp(context) async{
    Navigator.pop(context, MaterialPageRoute(builder: (context)=>
        MyApp()));
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Welcome Ayomini'),
      ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Container(margin: EdgeInsets.fromLTRB(5, 10, 50, 1),
                      child: ListTile(contentPadding: EdgeInsets.fromLTRB(5, 20, 50, 2),
                        leading: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 30, 60, 5),
                          child: (Text('Hello my Love,',
                          style: TextStyle(fontSize: 20,),
                          )),
                        ),


                  ),
                    ),
                  Text('Email: Adesanyaharnu@gmail.com'),
                  Text('Phone Number: 08156025111'
                    ),

                  Text('Do you want to know how much I love you? Continue to tap the button below. ',
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.w300,
                letterSpacing: 1.5,
                ),
                ),

                Container(margin: EdgeInsets.fromLTRB(50, 50, 10, 10),
                  child: Text('$_counter',
                  style: TextStyle(fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.blue),
                ),),
                  Container(margin: EdgeInsets.fromLTRB(50, 30, 5, 5),
                    child: FloatingActionButton(
                      onPressed: _incrementCounter,
                      tooltip: 'Increment',
                      child: Icon(Icons.favorite,
                      color: Colors.red,),
                      heroTag: "btn1",
                    ),
                  ),
                ],
              ),
            ),
          ),
      floatingActionButton: FloatingActionButton(
        child: Center(child: Icon(Icons.arrow_back)),
        heroTag: "btn2",
        onPressed: (){
      Navigator.pop(context);

          },
      ),
    );
  }
}

