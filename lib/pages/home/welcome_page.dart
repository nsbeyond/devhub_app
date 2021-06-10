import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:devhub_app/pages/auth/register_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScaffold(context);
  }

  Scaffold buildScaffold(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DataTable(
                decoration: const BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    ),
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.noRepeat,
                  ),
                ),
                columns: <DataColumn>[
                  DataColumn(label: Text('Test')),
                  DataColumn(label: Text('Test')),
                  DataColumn(label: Text('Test')),
                ],
                rows: <DataRow>[
                  DataRow(cells: <DataCell>[
                    DataCell(Text('Data 1'), placeholder: true),
                    DataCell(Text('Data 2'), placeholder: true),
                    DataCell(Text('Data 3'), placeholder: true),
                  ]),
                  DataRow(cells: <DataCell>[
                    DataCell(Text('Data 1'), placeholder: true),
                    DataCell(Text('Data 2'), placeholder: true),
                    DataCell(Text('Data 3'), placeholder: true),
                  ]),
                ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Welcome to DevHub!',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        //      MaterialState.pressed,MaterialState.hovered,MaterialState.focused,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(btnRegisterColor)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RegisterPage();
                          }));
                        },
                        child: Text('Register'),
                      ),
                    ],
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

  Color btnRegisterColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.redAccent;
    }
    return Colors.red;
  }
