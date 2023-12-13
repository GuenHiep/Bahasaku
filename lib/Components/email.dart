import 'package:bahasaku/Components/password.dart';
import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,),


        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("What is your email, Angga?",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      inputFile(label: "Email"),
                    ],
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (cpntext) => Password()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Color(0xff0095FF)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(150, 20, 150, 20 )),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }

}


// we will be creating a widget for text field
Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color:Colors.black87
        ),

      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.blue
              ),

            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)
            )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}