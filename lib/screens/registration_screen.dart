import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // Tugiye kugira form................
  final _formKey = GlobalKey<FormState>();

  // Aho Twugururira Form...................
  final firstNameEditngController = new TextEditingController();
  final secondNameEditngController = new TextEditingController();
  final emailEditngController = new TextEditingController();
  final passwordEditngController = new TextEditingController();
  final comfirmPasswordEditngController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    //Start firstName Feild..................................................
  final firstNameField = TextFormField(
    autofocus: false,
    controller: firstNameEditngController,
    keyboardType: TextInputType.emailAddress,

//Validator..........................
    onSaved: (Value) {
      firstNameEditngController.text = Value!;
    },
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.account_circle),
      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      hintText: "First Name",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50), 
        )
    ),

  );
//End firstName Feild..................................................

 //Start Second Name Feild..................................................
  final secondNameField = TextFormField(
    autofocus: false,
    controller: secondNameEditngController,
    keyboardType: TextInputType.emailAddress,

//Validator..........................
    onSaved: (Value) {
      secondNameEditngController.text = Value!;
    },
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.account_circle),
      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      hintText: "Second Name",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50), 
        )
    ),

  );
//End Second Name Feild..................................................

 //Start Email Feild..................................................
  final emailField = TextFormField(
    autofocus: false,
    controller: emailEditngController,
    keyboardType: TextInputType.emailAddress,

//Validator..........................
    onSaved: (Value) {
      emailEditngController.text = Value!;
    },
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.mail),
      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      hintText: "E-mail",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50), 
        )
    ),

  );
//End Email Feild..................................................

 //Start Password Feild..................................................
  final passwordField = TextFormField(
    autofocus: false,
    controller: passwordEditngController,
    obscureText: true,

//Validator..........................
    onSaved: (Value) {
      passwordEditngController.text = Value!;
    },
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.vpn_key),
      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      hintText: "Password",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50), 
        )
    ),

  );
//End Password Feild..................................................

 //Start Confirm Password Feild..................................................
  final confirmPasswordField = TextFormField(
    autofocus: false,
    controller: comfirmPasswordEditngController,
    obscureText: true,

//Validator..........................
    onSaved: (Value) {
      comfirmPasswordEditngController.text = Value!;
    },
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.vpn_key),
      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      hintText: "Confirm Password",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50), 
        )
    ),

  );
//End Confirm Password Feild..................................................

//Start loginButton Feild......................................................
final signUpButton = Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(30),
  color: Colors.redAccent,
  child: MaterialButton(
    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    minWidth: MediaQuery.of(context).size.width,
    onPressed: () {},
    child: Text(
      'SignUp',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),
    )),
  );
//End loginButton Feild......................................................



return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.red),
          onPressed: () {
            Navigator.of(context).pop();
          },

        ),
      ),
      body: Center(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(26.0),
          child: Form(
            key: _formKey,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100,
                  child: Image.asset("images/4.jpg",
                     fit: BoxFit.contain,
                  )),
              SizedBox(height: 25),

                firstNameField,
              SizedBox(height: 25),

                secondNameField,
              SizedBox(height: 25),

              emailField,
              SizedBox(height: 25),

              passwordField,
              SizedBox(height: 25),

              confirmPasswordField,
              SizedBox(height: 45),

              signUpButton,
              SizedBox(height: 45),

                
                ],
              ), 
            ),
          ),
          ),
        ),
      ),
    );
  }
}