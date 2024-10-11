import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterdevcamp/signup_scren.dart';
import 'package:flutterdevcamp/devcamp_ui.dart';
import 'package:flutterdevcamp/signup_scren.dart';  // Import your Signup screen
  // Import your Home screen
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _errorMessage;

  Future<void> _login() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // Navigate to the Home screen on successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FlutterDevCampUI()),  // Navigate to Home screen
      );
    } catch (e) {
      setState(() {
        _errorMessage = 'Login failed. Please try again.';
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Login',)),
      body: Container(
        //color: Colors.blue,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                //SizedBox(height: 200,),
                SizedBox(height: 120,width: 180,
                    child: Image.asset('assets/flutter.png')),
          
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                if (_errorMessage != null)
                  Text(
                    _errorMessage!,
                    style: TextStyle(color: Colors.red),
                  ),
                ElevatedButton(
                  onPressed: _login,
                  child: Text('Login'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),  // Navigate to Signup screen
                    );
                  },
                  child: Text('Don\'t have an account? Sign up'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),  // Navigate to Forgot Password screen
                    );
                  },
                  child: Text('Forgot Password?'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
