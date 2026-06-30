import 'package:flutter/material.dart';

void main() {
  runApp(const PersonalInfoApp());
}

class PersonalInfoApp extends StatelessWidget {
  const PersonalInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Info App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('Personal Info App'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(2, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 👤 Profile Icon
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.deepPurple,
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 15),

                // 👤 Name
                const Text(
                  'Sivani E R',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),

                const SizedBox(height: 5),

                // 💼 Role
                const Text(
                  'Mobile App Development (Flutter)',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 20),

                // 🔹 Skills Title
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Skills',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // 🔹 Skills Chips
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: const [
                    Chip(label: Text('Flutter')),
                    Chip(label: Text('Dart')),
                    Chip(label: Text('UI Design')),
                    Chip(label: Text('Firebase')),
                    Chip(label: Text('Supabase')),
                    Chip(label: Text('SQL')),
                  ],
                ),

                const SizedBox(height: 20),

                // 🔹 Contact Info Title
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Contact Info',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // 📧 Email
                const Row(
                  children: [
                    Icon(Icons.email, color: Colors.deepPurple),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text('sivani@email.com'),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // 📱 Phone
                const Row(
                  children: [
                    Icon(Icons.phone, color: Colors.deepPurple),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text('+91 9078563412'),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // 📍 Location
                const Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.deepPurple),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text('Kochi, Kerala'),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // 🔹 About Me Title
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'About Me',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // 📝 About Text
                const Text(
                  'I am a mobile app development student learning Flutter and Dart. '
                  'I enjoy building simple, user-friendly, and responsive mobile applications.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black87),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}