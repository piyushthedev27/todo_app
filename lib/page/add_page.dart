import 'package:flutter/material.dart';

class User {
  final String title;
  final String description;

  User(
    this.title,
    this.description,
  );

  String? get email => null;
}

class AddPage extends StatefulWidget {
  final User? user;
  AddPage({Key? key, this.user}) : super(key: key);

  @override
  AddPageState createState() => AddPageState();
}

class AddPageState extends State<AddPage> {
  final _formKey = GlobalKey<FormState>();
  final text1 = TextEditingController();
  final text2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Todo"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TextFormField(
                    controller: text1,
                    decoration: InputDecoration(
                      labelText: "Title",
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Title can't be empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: text2,
                    decoration: InputDecoration(
                      labelText: "Description",
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Description can't be empty";
                      }
                      return null;
                    },
                  ),
                ],
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: Builder(
                  builder: (BuildContext context) {
                    return ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Todo Submitted"),
                            backgroundColor: Colors.blue,
                          ),
                        );
                        if (_formKey.currentState!.validate()) {
                          User user = User(
                            text1.text,
                            text2.text,
                          );
                          Navigator.pop(context, user);
                          print('122 ${text1.text}');
                          print('2233 ${text2.text}');
                        }
                      },
                      child: Text(
                        "Done",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
