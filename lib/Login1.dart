import 'package:flutter/material.dart';
import 'package:login_flutter/HomePage.dart'; // นำเข้าไฟล์ login.dart ที่คุณสร้าง

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/logo.jpg'),
            ),
            const Text(
              "ສນ ສຸດສະໝຸກ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Username",
                  icon: Icon(
                    Icons.person,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Password",
                  icon: Icon(
                    Icons.lock,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RoutLogIn()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.orange, // ตั้งค่าสีพื้นหลังของปุ่มเป็นสีส้ม
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // ฟังก์ชันที่จะทำงานเมื่อกดปุ่ม
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.orange, // ตั้งค่าสีพื้นหลังของปุ่มเป็นสีส้ม
                  ),
                  child: const Text(
                    "Signup",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
