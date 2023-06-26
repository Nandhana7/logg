import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class log extends StatefulWidget {
  const log({Key? key}) : super(key: key);

  @override
  State<log> createState() => _logState();

}

class _logState extends State<log> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage("images/g.jpeg"),
          fit: BoxFit.cover
        ),
        ),
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Login",style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "USERNAME",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
              
                  ),
                ),
                SizedBox(height: 30,width: 20,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "PASSWORD",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan,
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80)
                        ),
                        // padding: EdgeInsets.all(30)
                      ),
                      onPressed: (){
                      }, child: Text("Log in")),
                ),
              ],
            ),
          ),

        ),
        
      ),
    );
  }
}

