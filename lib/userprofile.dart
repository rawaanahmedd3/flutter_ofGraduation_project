import 'package:flutter/material.dart';

import 'reusable_widget.dart';

class userprofile extends StatelessWidget {
  TextEditingController fullname = TextEditingController();
  TextEditingController bloodtype = TextEditingController();
  TextEditingController chronicdiseases = TextEditingController();
  TextEditingController surgery = TextEditingController();
  TextEditingController allergy = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        Center(
          child: Stack(
            children: [
              Image(
                image: NetworkImage(
                    'https://img.freepik.com/free-icon/user_318-159711.jpg'),
                height: 100,
                width: 100,
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 4,
                        color: Colors.white,
                      ),
                      color: Colors.blue,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.edit,
                      ),
                    ),
                  )),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              reusableTextField2("User Name", fullname),
              const SizedBox(
                height: 20,
              ),
              reusableTextField2("Blood Type", bloodtype),
              const SizedBox(
                height: 20,
              ),
              reusableTextField2(
                  "Chronic Diseases-امراض مزمنة", chronicdiseases),
              const SizedBox(
                height: 20,
              ),
              reusableTextField2("Previous Surgeries-عمليات سابقة", surgery),
              const SizedBox(
                height: 20,
              ),
              reusableTextField2("Allergies-حساسية", allergy),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
    // floatingActionButton:
    //     Column(mainAxisAlignment: MainAxisAlignment.end, children: [
    //   FloatingActionButton(
    //     onPressed: () {},
    //     child: const Icon(
    //       Icons.save,
    //       size: 35,
    //     ),
    //   ),
    //   FloatingActionButton(
    //     onPressed: () {},
    //     child: const Icon(
    //       Icons.edit,
    //       size: 35,
    //     ),
    //   ),
    // ]),
  }
}
