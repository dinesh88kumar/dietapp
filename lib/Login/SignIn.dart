import 'package:auto_size_text/auto_size_text.dart';
import 'package:diet_app/Login/authserviceForLogin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  var userId, password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool redline = false;
    bool send = false;

    String loginPassword = '343dklads';
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
          child: size.width > 800
              ? Container(
                  height: 350,
                  width: size.width / 1.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                            color: Colors.black),
                        height: 350,
                        width: size.width / 4.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          child: Image.network(
                            'https://th.bing.com/th/id/R.447742e05f304de55db4682053517f66?rik=uPpTtvoImXrXbA&riu=http%3a%2f%2flionessmagazine.com%2fwp-content%2fuploads%2f2016%2f04%2fimage-2.jpeg&ehk=IIonIRWgzN52O%2bR5ISAi%2fX6izoZeW6Lurvu5wHhiEq0%3d&risl=&pid=ImgRaw&r=0',
                            height: 350,
                            width: size.width / 5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.white,
                        ),
                        height: 350,
                        width: size.width / 3,
                        child: Form(
                          key: formkey,
                          child: Container(
                            padding: EdgeInsets.only(top: 30, left: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Container(
                                //   child: Image.asset(
                                //     'assets/logo/name.png',
                                //     scale: 2,
                                //   ),
                                // ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text('Sign into your account',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black, fontSize: 16)),
                                SizedBox(
                                  height: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: size.width / 4.5,
                                      height: 50,
                                      child: TextFormField(
                                          onSaved: (v) {
                                            v = userId;
                                          },
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Invalid';
                                            }

                                            const pattern =
                                                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                                            final regExp = RegExp(pattern);

                                            if (!regExp.hasMatch(value)) {
                                              return 'Invalid';
                                            }
                                          },
                                          onChanged: (value) {
                                            setState(() {
                                              userId = value;
                                            });
                                            print(userId);
                                          },
                                          decoration: InputDecoration(
                                              labelText: 'Email address',
                                              labelStyle: GoogleFonts.poppins(
                                                  color: Colors.black12),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: redline == true
                                                          ? Colors.red
                                                          : Colors.black26,
                                                      width: 0.3)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: redline == true
                                                          ? Colors.red
                                                          : Colors.black54,
                                                      width: 1)))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: size.width / 4.5,
                                      height: 50,
                                      child: TextFormField(
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'password cannot be empty';
                                            }
                                          },
                                          obscureText: !showPassword,
                                          onSaved: (va) {
                                            password = va;
                                          },
                                          onChanged: (value) {
                                            setState(() {
                                              password = value;
                                            });
                                            print(password);
                                          },
                                          decoration: InputDecoration(
                                              suffixIcon: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      showPassword =
                                                          !showPassword;
                                                    });
                                                  },
                                                  icon: Icon(
                                                    Icons.remove_red_eye,
                                                    color: showPassword
                                                        ? Color(0xffff5a1e)
                                                        : Colors.grey,
                                                  )),
                                              labelText: 'password',
                                              labelStyle: GoogleFonts.poppins(
                                                  color: Colors.black12),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: redline == true
                                                          ? Colors.red
                                                          : Colors.black26,
                                                      width: 0.3)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: redline == true
                                                          ? Colors.red
                                                          : Colors.black54,
                                                      width: 1)))),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    ConsoleAuth.signin(
                                        userId, password, context, this);
                                    // If the form is valid, display a snackbar. In the real world,
                                    // you'd often call a server or save the information in a database.
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text('Loging you in')));
                                  },
                                  child: Container(
                                      height: 40,
                                      width: size.width / 4.5,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color(0xff00ffb2)),
                                      child: Center(
                                          child: Text(
                                        'LOGIN',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ))),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  height: 400,
                  width: size.width > 450 ? size.width / 1.5 : size.width / 1.2,
                  child: Form(
                    key: formkey,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 30, left: size.width > 450 ? 40 : 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Container(
                          //   child: Image.asset(
                          //     'assets/logo/name.png',
                          //     scale: 2,
                          //   ),
                          // ),
                          SizedBox(
                            height: 20,
                          ),
                          AutoSizeText(
                            'Sign into your account',
                            style: GoogleFonts.poppins(
                                color: Colors.black, fontSize: 16),
                            maxLines: 2,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width > 450
                                    ? size.width / 2
                                    : size.width / 1.35,
                                height: 50,
                                child: TextFormField(
                                    onSaved: (v) {
                                      v = userId;
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid';
                                      }

                                      const pattern =
                                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                                      final regExp = RegExp(pattern);

                                      if (!regExp.hasMatch(value)) {
                                        return 'Invalid';
                                      }
                                    },
                                    onChanged: (value) {
                                      setState(() {
                                        userId = value;
                                      });
                                      print(userId);
                                    },
                                    decoration: InputDecoration(
                                        labelText: 'Email address',
                                        labelStyle: GoogleFonts.poppins(
                                            color: Colors.black12),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: redline == true
                                                    ? Colors.red
                                                    : Colors.black26,
                                                width: 0.3)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: redline == true
                                                    ? Colors.red
                                                    : Colors.black54,
                                                width: 1)))),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: size.width > 450
                                    ? size.width / 2
                                    : size.width / 1.35,
                                height: 50,
                                child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'password cannot be empty';
                                      }
                                      //change
                                    },
                                    obscureText: !showPassword,
                                    onSaved: (va) {
                                      password = va;
                                    },
                                    onChanged: (value) {
                                      setState(() {
                                        password = value;
                                      });
                                      print(password);
                                    },
                                    decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                showPassword = !showPassword;
                                              });
                                            },
                                            icon: Icon(
                                              Icons.remove_red_eye,
                                              color: showPassword
                                                  ? Color(0xffff5a1e)
                                                  : Colors.grey,
                                            )),
                                        labelText: 'password',
                                        labelStyle: GoogleFonts.poppins(
                                            color: Colors.black12),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: redline == true
                                                    ? Colors.red
                                                    : Colors.black26,
                                                width: 0.3)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: redline == true
                                                    ? Colors.red
                                                    : Colors.black54,
                                                width: 1)))),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                            onTap: () async {
                              ConsoleAuth.signin(
                                  userId, password, context, this);
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Loging you in')));
                            },
                            child: Container(
                                height: 40,
                                width: size.width > 450
                                    ? size.width / 2
                                    : size.width / 1.35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xff00ffb2)),
                                child: Center(
                                    child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ))),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
    );
  }
}
