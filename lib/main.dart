import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff5deac9)),
        useMaterial3: true,
      ),
      home: const SignInPage(),
    );
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7ffdef),
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('assets/images/2.jpg'),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: const TextStyle(color: Color(0xff0f3a5d)),
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff0f5181)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(color: Color(0xff0f5181)),
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff0f5181)),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff5deac9),
              ),
              child: const Text('Sign In'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              },
              child: const Text(
                'New User? Sign Up',
                style: TextStyle(color: Color(0xff0c233a)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('assets/images/4.jpg'),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: const TextStyle(color: Color(0xff032448)),
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff032448)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone',
                labelStyle: const TextStyle(color: Color(0xff032448)),
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff032448)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: const TextStyle(color: Color(0xff032448)),
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff032448)),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff7bfaef),
              ),
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Already have an account? Sign In',
                style: TextStyle(color: Color(0xff032448)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
