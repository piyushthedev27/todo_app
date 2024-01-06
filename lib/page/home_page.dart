import 'package:todo_app/page/add_page.dart';
import 'package:todo_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User> userList = [];

  void removeTodo(int index) {
    userList.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: userList.isEmpty
            ? Center()
            : ListView.builder(
                itemCount: userList.length,
                itemBuilder: (context, index) {
                  User? user = userList[index];
                  return Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text('${user.title}'),
                        titleTextStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                        subtitle: Text('${user.description}'),
                        subtitleTextStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        trailing: IconButton(
                          onPressed: () => removeTodo(index),
                          icon: Icon(Icons.delete),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final User? newUser = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPage(),
            ),
          );
          if (newUser != null) {
            setState(() {
              userList.add(newUser);
            });
          }
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
