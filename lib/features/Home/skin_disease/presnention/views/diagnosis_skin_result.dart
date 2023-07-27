import 'package:flutter/material.dart';
import '../../../../../util/colors.dart';
import '../../../../../util/skin_types.dart';
import '../widgets/widegts/custom_app_bar.dart';

class Skin_Diagnosis extends StatelessWidget {
  Skin_Diagnosis({super.key, required this.diseaselabel});
  final dynamic diseaselabel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(color: kGray),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  CustomAppBar(title: "Info"),
                  Expanded(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: AspectRatio(
                                            aspectRatio: 1,
                                            child: ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(15),
                                                child: Image(
                                                  image: AssetImage(
                                                      Skin_disease_info().picture),
                                                  alignment: Alignment.center,
                                                  fit: BoxFit.cover,
                                                )))),
                                    const SizedBox(width: 10),
                                    Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text(Skin_disease_info().type,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(color: kBlack, fontWeight: FontWeight.bold, fontSize: 26)),
                                        )),
                                  ]),
                              const SizedBox(height: 30),
                              const SizedBox(height: 25),
                              Text("Details", style: TextStyle(color: kBlack, fontWeight: FontWeight.bold, fontSize: 26)),
                              const SizedBox(height: 10),
                              Text(Skin_disease_info().riskText,
                                  style:
                                  TextStyle(color: kDarkGray, fontSize: 16,fontWeight: FontWeight.bold)),
                              const SizedBox(height: 20),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      Skin_disease_info().descriptionShort,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 15,
                                          color: kDarkGray
                                      ),
                                    )
                                  ]),
                              const SizedBox(height: 30),
                              const SizedBox(
                                height: 40,
                              ),
                            ])),
                  )
                ],
              )),

        ],
      ),
    );

  }

  CancerTypeEntry Skin_disease_info(){
    CancerTypeEntry cTypeEntry =
    cTypes.firstWhere((entry) => entry.type == diseaselabel);
    return cTypeEntry;
  }
}

