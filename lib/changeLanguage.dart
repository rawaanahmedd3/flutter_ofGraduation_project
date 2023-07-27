import 'package:flutter/material.dart';
import 'language.dart';
class changeLanguage extends StatelessWidget {
  const changeLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          centerTitle: true,
          title: Text('Languages'),
          backgroundColor: Colors.blue[700],
        ),
        body: ListView.builder(
          itemCount: languages.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
              title: Text('${languages[index].name}'),
              value: languages[index].isChecked,
              onChanged: (bool? value) {
                setState() {
                  languages[index].isChecked = value!;
                }
              },
              secondary: const Icon(Icons.language),
            );
          },
        )
    );
  }

}
