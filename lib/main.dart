import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool java=false;
  bool php=false;
  bool js=false;
  bool flutter=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkBox"),
      ),
      body: Center(
        child: Column(
            children: [
              Text("Choose the languages you learned"),

              CheckboxListTile(
                  title:Text("java") ,
                  value: java,
                  onChanged: (bool? value){
                    setState(() {
                      java=value!;
                    });
                  }
              ),
              CheckboxListTile(
                  title:Text("php") ,
                  value: php,
                  onChanged: (bool? value){
                    setState(() {
                      php=value!;
                    });
                  }
              ),

              CheckboxListTile(
                  title:Text("js") ,
                  value: js,
                  onChanged: (bool? value){
                    setState(() {
                      js=value!;
                    });
                  }
              ),
              CheckboxListTile(
                  title:Text("flutter") ,
                  value: flutter,
                  onChanged: (bool? value){
                    setState(() {
                      flutter=value!;
                    });
                  }
              ),

              ElevatedButton(
                  onPressed: (){
                    String lang="";
                    if(java==true){
                      lang+="java\n";
                    }
                    if(php==true){
                      lang+="php\n";
                    }
                    if(js==true){
                      lang+="js\n";
                    }
                    if(flutter==true){
                      lang+="flutter\n";
                    }
                    showDialog(context: context,
                        builder: (_){
                      return AlertDialog(
                        title: Text("Selected languages"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("You choose the following languages"),
                            Text(lang.toString()),
                          ],
                        ),
                      );
                        });
                  },
                  child: Text("Apply")
              ),
            ],
        ),
      ),

    );
  }

  // CheckboxListTile buildCheckboxListTile(String? title,bool? value_l) {
  //   return CheckboxListTile(
  //               title:Text(title!) ,
  //               value: value_l,
  //               onChanged: (bool? value){
  //                 setState(() {
  //                   value_l=value!;
  //                 });
  //               }
  //           );
  // }
}
