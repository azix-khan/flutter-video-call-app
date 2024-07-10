import 'package:flutter/material.dart';
import 'package:flutter_video_call_app/pages/call_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController idController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pink,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/1.png',
                scale: 3,
              ),
              const Text.rich(
                TextSpan(
                  text: "Let's ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'Talk',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                      ),
                    )
                  ],
                ),
              ),
              const Text('CONNECT TO THE WORLD'),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextFormField(
                  controller: idController,
                  decoration: InputDecoration(
                    hintText: 'Enter call id',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                CallPage(callID: idController.text)));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          style: BorderStyle.solid,
                          color: Colors.pink,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(child: Text('Join Call')),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
