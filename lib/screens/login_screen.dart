import 'package:flutter/material.dart';
import 'package:mukamana/screens/home_screen.dart';
import 'package:mukamana/screens/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
_LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

 final _formKey = GlobalKey<FormState>();

 final TextEditingController emailController = new TextEditingController();
 final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

//Start Enail Feild..................................................
  final emailField = TextFormField(
    autofocus: false,
    controller: emailController,
    keyboardType: TextInputType.emailAddress,

//Validator..........................
    onSaved: (Value) {
      emailController.text = Value!;
    },
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.mail),
      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      hintText: "Email",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50), 
        )
    ),

  );
//End Enail Feild..................................................

//Start password Feild......................................................
   final passwordFeild = TextFormField(
     autofocus: false,
     controller: passwordController,
     obscureText: true,
//Validator..........................

      onSaved: (Value) {
        passwordController.text = Value!;
      }, 
      textInputAction: TextInputAction.done, 
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50), 
          )
      )   
   );
  //End Password Feild..................................................

//Start loginButton Feild......................................................
final loginButton = Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(30),
  color: Colors.redAccent,
  child: MaterialButton(
    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    minWidth: MediaQuery.of(context).size.width,
    onPressed: () {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));

    },
    child: Text(
      'Login',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),
    )),
  );
//End loginButton Feild......................................................



    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
          child: Form(
            key: _formKey,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200,
                  child: Image.asset("images/1.jpg",
                     fit: BoxFit.contain,
                  )),
              SizedBox(height: 25),

                emailField,
              SizedBox(height: 35),

                passwordFeild,
              SizedBox(height: 45),

                loginButton,
              SizedBox(height: 45), 

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Nimba Utarugurura Ububiko?  "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegistrationScreen()));
                      
                    },
                    child: Text(
                      "Fyonda Hano",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold, 
                        fontSize: 15),
                      ),
                    )
                ],
              ) 
             ],
            ),
          ),
          )
        ),
      ),
      ),
    );
  }
}