import 'package:flutter/material.dart';
import 'package:flutter_particles/particles.dart';


void main() => runApp(new MyAnim());

class MyAnim extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyParticle(),
    );
  }
}

class MyParticle extends StatefulWidget {
  @override
  _MyParticleState createState() => new _MyParticleState();
}

class _MyParticleState extends State<MyParticle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF161C32), Color(0xFF373B44)])),
        child:Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              child: Align(
          alignment: Alignment.topLeft,
          child: new Particles(40, Colors.blue),
        ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(15.0, 70.0, 0, 0),
                child: Text(
                  "Heyy",
                  style: TextStyle(
                    fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Cream Peach'
                  )
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(18.0, 150.0, 0, 0),
                child: Text(
                  "There",
                  style: TextStyle(
                    fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Cream Peach'
                  )
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(200.0, 150.0, 0, 0),
                child: Text(
                  ".",
                  style: TextStyle(
                    fontSize: 80.0, fontWeight: FontWeight.w900, color: Color(0xFFCE4A7EFF), fontFamily: 'Cream Peach'
                  )
                ),
              ),
              Container(
                padding: EdgeInsets.only(top:250, left:18, right: 18),
                child: Column(children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey

                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0092CC))
                      )
                    )
                  )
                ],)
              ),
              Container(
                padding: EdgeInsets.only(top:325.0, left:20.0, right: 20.0),
                child: Column(children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey

                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0092CC))
                      )
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height:5),
                  Container(
                    alignment: Alignment(1, 0),
                    padding: EdgeInsets.only(top:15.0, left:5.0),
                    child: InkWell(
                      child: Text("Forgot Password",
                      style: TextStyle(
                        color: Color(0xFF0092CC),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',

                      ),
                    ),
                  ),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.lightBlue,
                        color: Color(0xFF0092CC),
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 40.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child:
                                  ImageIcon(AssetImage("lib/assets/google.png"), color: Colors.white,)
                            ),
                            SizedBox(width: 10.0),
                            Center(
                              child: Text('Log in with Google',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat', color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                    )
                ],)
              ),
          ]
        ),
      ),
      
      ),
    );
  }
}


