import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
            backgroundColor: Colors.deepOrange,
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.pink,
              title: const Text('SECOND ASSIGNMENT'),
            ),
            drawer: orientation == Orientation.portrait
                ? Drawer(
                    backgroundColor: Colors.white.withOpacity(0.9),
                    child: SafeArea(
                      child: DefaultTextStyle(
                        style: Theme.of(context).textTheme.titleLarge!,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  'FIRST ELEMENT',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Text(
                                'SECOND ELEMENT',
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  'THIRD ELEMENT',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Text(
                                'FORTH ELEMENT',
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  'FIFTH ELEMENT',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
                : null,
            body: orientation == Orientation.landscape
                ? Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: DefaultTextStyle(
                            style: Theme.of(context).textTheme.titleLarge!,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: const [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.0),
                                    child: Text(
                                      'FIRST ELEMENT',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Text(
                                    'SECOND ELEMENT',
                                    textAlign: TextAlign.center,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.0),
                                    child: Text(
                                      'THIRD ELEMENT',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Text(
                                    'FORTH ELEMENT',
                                    textAlign: TextAlign.center,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.0),
                                    child: Text(
                                      'FIFTH ELEMENT',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                    ],
                  )
                : null);
      },
    );
  }
}
