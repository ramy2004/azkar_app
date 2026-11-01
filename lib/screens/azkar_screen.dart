import 'package:flutter/material.dart';

import 'about_app_screen.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({super.key});

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  String _zeker = 'الحمد لله';
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter = 0;
          });
        },
        child: const Icon(Icons.refresh),
      ),
        extendBodyBehindAppBar: true,
          appBar: AppBar(
            actionsIconTheme: IconThemeData(color : Colors.black),
            centerTitle: true,
            elevation: 0,
            title: const Text('أذكار'),
            backgroundColor: Colors.transparent,
            actions: [
              PopupMenuButton<String>(
                onSelected: (value) {
                  if (_zeker != value) {
                    setState(() {
                      _zeker = value;
                      _counter = 0;
                    });
                  }
                },
                itemBuilder: (context) {
                  return const [
                    PopupMenuItem(
                      value: 'الحمد لله',
                      child: Text('الحمد لله'),
                    ),
                    PopupMenuItem(
                      value: 'سبحان الله',
                      child: Text('سبحان الله'),
                    ),
                    PopupMenuItem(
                      value: 'أستغفر الله',
                      child: Text('أستغفر الله'),
                    ),
                  ];
                },
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => AboutAppScreen(
                            message: 'مرحبا من صفحة اذكاري',
                        )
                      )
                    );
                  },
                  icon: Icon(Icons.info_outline),
              ),
            ],
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/pg_app.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/app_pg.jpg'),
                ),
                Container(
                  clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  padding: EdgeInsets.only(right: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 6,
                        offset: Offset(0, 0),
                      )
                    ],
                  ),

                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          _zeker,
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Amiri',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      DecoratedBox(
                        decoration: BoxDecoration(color: Colors.teal),
                        child: SizedBox(
                          width: 50,
                          height: double.infinity,
                          child: Center(
                            child: Text(
                              _counter.toString(),
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Amiri',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                        child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            ++_counter;
                          });
                        },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                        child: Text(
                            'تسبيح',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Amiri',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                    )
                    ),

                    Expanded(
                      child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            _counter = 0;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                        child: Text('إعادة', style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Amiri',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),),)
                  ],
                ),
              ],
            ),
          )
    );
  }
}

/*

طريقة تغيير الاتجاه 1

import 'package:flutter/material.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({super.key});

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.blue.shade50,
          appBar: AppBar(
            title: const Text('أذكار الصباح'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: Center(
            child: const Text('أذكار الصباح'),
          ),
        ),
      ),
    );
  }
}

 */