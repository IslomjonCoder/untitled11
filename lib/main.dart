import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            Container(
              height: 45,
              width: 45,
              // child: Image.asset('images/avatar_logo.jpg', fit: BoxFit.fill),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: CircleAvatar(
                child: ClipOval(
                    child: Image.asset('assets/images/avatar_logo.jpg')),
              ),
            ),
            const SizedBox(
              width: 20,
            )
          ],
          title: const Text(
            'Exam',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33),
                  color: const Color(0xFFD3D2FC)),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Image.asset(
                  'assets/images/react_logo.png',
                  color: const Color(0xFF777CFE),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Physics Exam',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'This is final exam in physics. You must answer all the questions correctly, the time given is only 45 minutes. If you get 70 points, you will pass the course. If your score  is less than 40, you wil have to retake the rest.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 40,
            // ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            width: 2, color: const Color(0xFFCED1E5))),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.timer,
                      color: Color(0xFFC5C9FD),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '45 minutes for the test',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, letterSpacing: 1),
                      ),
                      SizedBox(height: 4),
                      Text('Complate the test in 45 minutes')
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            width: 2, color: const Color(0xFFC6E0E8))),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.file_copy,
                      color: Color(0xFFBFE4FA),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '35 questions',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, letterSpacing: 1),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('The test consist of 35 questions')
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 140),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ))),
                  child: const Text('Exam Started'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
