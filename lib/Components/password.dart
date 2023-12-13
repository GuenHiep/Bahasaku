import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});
  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool passwordVisible=true;
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
                    Text("Set up your password",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      obscureText: passwordVisible,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1, color: Colors.lightBlueAccent
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1, color: Colors.blue
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState ((){
                              passwordVisible = !passwordVisible;
                            });
                          },
                          icon: Icon(passwordVisible ? Icons.visibility: Icons.visibility_off),
                        )
                      ),
                    ),
                    const Text("How strong your password: Super Strong",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(119, 172, 138, 1)
                    ),
                    )
                  ],
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (cpntext) => Password()));
                    },
                    child: Text(
                      "Start",
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