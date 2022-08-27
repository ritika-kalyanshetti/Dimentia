import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'forgot_pw_page.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({Key? key,  required this.showRegisterPage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailcontroller.text.trim(),
      password: _passwordcontroller.text.trim(),
    );
  }
  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Icon(
              Icons.phone_android,
              size: 100,
              ),
              const SizedBox(height: 75),
              Text(
                'Hello Again',
                style: GoogleFonts.bebasNeue(fontSize: 52),),
              const SizedBox(height: 10),
              const Text(
                'Welcome back',
                style: TextStyle( fontSize: 20,
                  ),
              ),
            const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: TextField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide : BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
              ),
                      focusedBorder: OutlineInputBorder(
                        borderSide : BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Email',
                fillColor: Colors.grey[200],
                filled: true,
                  ),
                ),
              ),
              SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: TextField(
                obscureText: true,
                controller: _passwordcontroller,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide : BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide : BorderSide(color: Colors.deepPurple),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Password',
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
                const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context){
                      return ForgotPasswordPage() ;
            },
            ),
            );
            },
                  child: Text('Forgot Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            ),

        //signin button
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                onTap: signIn,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                    color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                  ),
                    child: Center(
                      child: Text(
                        'Sign In',
                         style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ),
              SizedBox(height: 10),

              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                'Not a member?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
                GestureDetector(
                onTap: widget.showRegisterPage,
                child: Text(
                  'Register now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          ],
        ),
      ),
    ),
    ),
    );
  }
}