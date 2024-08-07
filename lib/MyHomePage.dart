import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHomePage> {
  int count = 0;

  Counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(125, 242, 144, 253),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 117, 56, 128),
        centerTitle: true,
        title: Text(
          'فاذكروني أذكركم واشكروا لي ولا تكفرون',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.50,
                  height: MediaQuery.of(context).size.height / 1.50,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 9),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white),
                      child: Text(
                        count.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Transform.translate(
                  offset: Offset(1, 9),
                  child: Container(
                    width: 190,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 9),
                              blurRadius: 20,
                              color: Colors.black)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => Counter(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              shape: BoxShape.circle,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              maximumSize: Size(80, 80)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => reset(),
                              child: Icon(Icons.wifi_protected_setup),
                              style: ElevatedButton.styleFrom(
                                  maximumSize: Size(80, 80)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
