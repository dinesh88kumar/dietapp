import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diet_app/Login/Authservice.dart';
import 'package:diet_app/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _obscureText = true;
  String? _username, _email, _password;

  //For the loading state.
  bool? _isSubmitting;

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  FirebaseAuth auth = FirebaseAuth.instance;
  final DateTime timestamp = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                AutoSizeText(
                  'Login Credentials',
                  style: GoogleFonts.poppins(fontSize: 17),
                ),
                SizedBox(
                  height: 8,
                ),
                AutoSizeText('Note: ********',
                    style:
                        GoogleFonts.poppins(fontSize: 14, color: Colors.red)),
                SizedBox(height: 20),
                _showUsernameInput(),
                SizedBox(
                  height: 15,
                ),
                _showEmailInput(),
                SizedBox(
                  height: 15,
                ),
                _showPasswordInput(),
                SizedBox(
                  height: 15,
                ),
                _showFormActions()
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showUsernameInput() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: TextFormField(
          onSaved: (val) => _username = val,
          validator: (val) => val!.length < 6 ? "Username is too short." : null,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Username",
              hintText: "Enter Valid Username",
              icon: Icon(
                Icons.face,
                color: Colors.grey,
              )),
        ),
      ),
    );
  }

  _showEmailInput() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: TextFormField(
          onSaved: (val) => _email = val,
          validator: (val) => !val!.contains("@") ? "Invalid Email" : null,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
              hintText: "Enter Valid Email",
              icon: Icon(
                Icons.mail,
                color: Colors.grey,
              )),
        ),
      ),
    );
  }

  //4
  _showPasswordInput() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: TextFormField(
          onSaved: (val) => _password = val,
          validator: (val) => val!.length < 6 ? "Password Is Too Short" : null,
          obscureText: _obscureText,
          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility),
              ),
              border: OutlineInputBorder(),
              labelText: "Password",
              hintText: "Enter Valid Password",
              icon: Icon(
                Icons.lock,
                color: Colors.grey,
              )),
        ),
      ),
    );
  }

  _showFormActions() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          _isSubmitting == true
              ? CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation(Theme.of(context).primaryColor),
                )
              : RaisedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  color: Colors.orange,
                  onPressed: _submit),
        ],
      ),
    );
  }

  //6
  _submit() async {
    final _form = _formKey.currentState;
    if (_form!.validate()) {
      _form.save();
      print("Email $_email, Password $_password, Username $_username");
      // await FirebaseAuth.instance
      //     .createUserWithEmailAndPassword(email: _email!, password: _password!)
      //     .then((value) {

      //   // return SnackBar(
      //   //     duration: Duration(seconds: 7),
      //   //     content: Container(
      //   //       height: 50,
      //   //       color: Color(0xff0ffb2),
      //   //       child: Center(
      //   //         child: Text(
      //   //           'Created Successully',
      //   //           style: TextStyle(fontSize: 12),
      //   //         ),
      //   //       ),
      //   //     ));
      // });
      AuthenticationService(fauth)
          .signUp(email: _email!, password: _password!)
          .then((e) {
        FirebaseFirestore.instance
            .collection("users")
            .doc(fauth.currentUser!.uid)
            .set({
          "Name": _username,
          'Uid': fauth.currentUser!.uid,
          'Email': _email,
          "Timestamp": timestamp,
        }).then((value) {
          final _storage = GetStorage();
          _storage.write("name", _username);
          _storage.write("uid", fauth.currentUser!.uid);

          final snackbar = SnackBar(
            duration: Duration(seconds: 4),
            backgroundColor: Colors.black,
            content: Text(
              "Created Successfully",
              style: TextStyle(color: Colors.green),
            ),
          );

          _scaffoldKey.currentState!.showSnackBar(snackbar);
          _formKey.currentState!.reset();
        }).then((value) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyApp()));
        });
      });
    }
  }
}

FirebaseAuth fauth = FirebaseAuth.instance;
