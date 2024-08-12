import 'package:flutter/material.dart';

class Bmiscreen extends StatefulWidget {
  const Bmiscreen({super.key});

  @override
  State<Bmiscreen> createState() => _BmiscreenState();
}

class _BmiscreenState extends State<Bmiscreen> {
  bool ch = true;
  Color c = Colors.brown;
  double x = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Center(
            child: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        ch = false;
                      }),
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.ac_unit_rounded,),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: ch ? Colors.brown : Colors.yellow,
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.ac_unit_rounded),
                            Text("Female",style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w800
                            ),),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: !ch ? Colors.brown : Colors.yellow,
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      onTap: () {
                        setState(() {
                          ch = true;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(fontSize: 50),
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${x.round()}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 50),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        )
                      ],
                    ),
                    Slider(
                      value: x,
                      onChanged: (value) {
                        setState(() {
                          x = value;
                        });
                      },
                      max: 250,
                      min: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weight"),
                          Text(''),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                child: Icon(Icons.add),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                child: Icon(Icons.minimize),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age"),
                          Text(''),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                child: Icon(Icons.add),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                child: Icon(Icons.minimize),
                              )
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  )
                ],
              ),
            ),
          ),
          /*Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                print(result.round());

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResultScreen(
                      age: age,
                      isMale: isMale,
                      result: result.round(),
                    ),
                  ),
                );
              },
              height: 50.0,
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),*/

        ],
      ),
    );
  }
}
