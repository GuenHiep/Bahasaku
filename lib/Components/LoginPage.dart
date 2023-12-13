import 'package:bahasaku/Components/Register.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  final styleText = TextStyle(
      fontSize: 20, color: Color(0xff0074CE), fontWeight: FontWeight.w700);
  final themeColor = Color(0xff0074CE);
  bool isEmailCorrect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset('assets/Starter/LogoStarter.png')),
              Positioned(
                top: 380,
                left: 0,
                right: 0,
                bottom: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //INPUT EMAIL
                          Text(
                            'Input Email',
                            style: styleText,
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            onChanged: (val) {
                              isEmailCorrect = isEmail(val);
                            },
                            decoration: InputDecoration(
                                hintText: 'Email....',
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: themeColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)))),
                          ),
                          SizedBox(height: 10),
                          //INPUT PASSWORD
                          Text(
                            'Input Password',
                            style: styleText,
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(onTap: (){
                                setState(() {
                                  _obscureText=!_obscureText;
                                });
                              },
                                child: Icon(_obscureText
                                    ?Icons.visibility
                                    :Icons.visibility_off
                                ),
                              ),
                                hintText: 'Password....',
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(width: 1, color: themeColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)))),
                          ),
                          SizedBox(height: 30),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50)))),
                                onPressed: () {},
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      //LoginwithGoogleForm
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      height: 300,
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            children: <Widget>[
                                              //First row
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Image.asset(
                                                      'assets/Starter/image 37.png'),
                                                  TextButton(
                                                    child: Icon(
                                                      Icons.close,
                                                      color: Colors.black,
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.pop(context),
                                                  ),
                                                ],
                                              ),
                                              //Text choose your account
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Choose your account',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 20),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              //Choose your account button #1
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: 300,
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          13))),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(
                                                                5, 15, 5, 15),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Image.asset(
                                                              'assets/Starter/Icon.png',
                                                              width: 32,
                                                            ),
                                                            Text(
                                                              'John Doe',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Icon(Icons
                                                                .arrow_forward_ios)
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              //Choose your account button #2
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: 300,
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Colors.white,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          13))),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .fromLTRB(
                                                                5, 15, 5, 15),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Image.asset(
                                                              'assets/Starter/Icon.png',
                                                              width: 32,
                                                            ),
                                                            Text(
                                                              'Otong',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Icon(Icons
                                                                .arrow_forward_ios)
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  TextButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          'Use another account?',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .keyboard_arrow_down,
                                                          color: Colors.black,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Text(
                                'Login With Google',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              )),
                          Image.asset('assets/Starter/GoogleLogo.png')
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Doesn't have account?",
                            style: TextStyle(color: Color(0xff3C3C43)),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (cpntext) => Register()));
                              },
                              child: Text('Register'))
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
