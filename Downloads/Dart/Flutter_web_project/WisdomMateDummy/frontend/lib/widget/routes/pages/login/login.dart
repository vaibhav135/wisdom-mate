import 'package:flutter/material.dart';
import 'package:frontend/widget/navigation/navbar_tablet_dektop.dart';
import 'package:frontend/api/login_api.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  Future <Login> _futureLogin ;


  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
       child: (_futureLogin == null)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      controller: _username,
                      decoration: InputDecoration(hintText: 'Enter username'),
                    ),
                    TextField(
                      obscureText: true,
                      controller: _password,
                      decoration: InputDecoration(hintText: 'password'),
                    ),
                    RaisedButton(
                      child: Text('login'),
                      onPressed: () {
                        setState(() {
                          _futureLogin = createLogin(_username.text , _password.text);
                        });
                      },
                    ),
                  ],
                )
                : FutureBuilder<Login>(
                     future: _futureLogin,
                     builder: (context , snapshot){
                       if(snapshot.hasData) {
                         return Text(snapshot.data.currentUser);
                       }
                       else if(snapshot.hasError) {
                         return Text("${snapshot.error}");
                       }
                       return CircularProgressIndicator();
                     },
                  ),
      ),
    );
  }
}
