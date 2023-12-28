import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordObscrued = true;
  final _formkey = GlobalKey <FormState>();
  final userController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/log1.png"),
            fit: BoxFit.fill,
          )
        ),
        padding:  EdgeInsets.only(
          top: MediaQuery.of(context).size.height *0.6,
          right:35,left: 35),
        child: Column(
          children: [
            SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: userController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '*this field is required';
                } else {
                  return null;
                }
                },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF7A5600)),
                ),
                fillColor: Color(0xFFF2DFB2),
                filled: true,
                hintText: 'Username',hintStyle: TextStyle(
                 color: Color(0xFF7A5600),
                fontFamily: 'AbhayaLibre',
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: passController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '*this field is required';
                  } else {
                    return null;
                  }
                  },
                obscureText: passwordObscrued,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF7A5600)),
                ),
                fillColor: Color(0xFFF2DFB2),
                filled: true,
                hintText: 'Password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passwordObscrued = !passwordObscrued;
                    });
                  },
                  icon: Icon(Icons.visibility_off),
    ),hintStyle: TextStyle(
    color: Color(0xFF7A5600),
              fontFamily: 'AbhayaLibre',),
        border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(10),
    )
                )
              ),

           SizedBox(height: 5) ,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: Text('Fogot password?',style: TextStyle(
                  fontFamily: 'AbhayaLibre',
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 13,

                ),))
              ],

            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff7A5600),),
                onPressed: (){},child: Text('Log In',
              style: TextStyle(
                fontFamily: "inter",
                  color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24),),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?",style: TextStyle(
                  fontFamily: 'AbhayaLibre',
                    color:Colors.white,
                     fontSize: 15,
                     letterSpacing: 1,),),
                TextButton(onPressed: (){}, child: Text('Create account',style: TextStyle(
                  fontFamily:'karla' ,
                color: Color(0xFF604401),
                fontWeight: FontWeight.bold,
                fontSize: 15,),))
    ],
            )
          ],
        ),
      ),
    );
  }
}
