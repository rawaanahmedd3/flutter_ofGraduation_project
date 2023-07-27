import 'package:flutter/material.dart';

class Data {
  String title;
  String subtitle;
  bool? checked;

  Data({required this.title, required this.subtitle, required this.checked});
}

class symptoms extends StatefulWidget {
  const symptoms({Key? key}) : super(key : key);

  @override
  State<symptoms> createState() => _symptoms();
}

class _symptoms extends State<symptoms> {
  static List<Data> data = [
    Data(title: 'abdominal_pain', subtitle: 'وجع بطن', checked: false),
    Data(title: 'acidity', subtitle: 'حموضة', checked: false), 
    Data(title: 'blurred_and_distorted_vision', subtitle: 'رؤية صبابية و مشوهة', checked: false), 
    Data(title: 'breathlessness', subtitle: 'ضيق تنفس', checked: false), 
    Data(title: 'burning_micturition', subtitle: 'حرق اثناء التبول', checked: false), 
    Data(title: 'chest_pain', subtitle: 'ألم الصدر', checked: false), 
    Data(title: 'chills', subtitle: 'قشعريرة', checked: false), 
    Data(title: 'congestion', subtitle: 'ازدحام', checked: false),
    Data(title: 'continuous_sneezing', subtitle: 'العطس المستمر', checked: false), 
    Data(title: 'cough', subtitle: 'سعال', checked: false), 
    Data(title: 'dehydration', subtitle: 'جفاف', checked: false), 
    Data(title: 'depression', subtitle: 'اكتئاب', checked: false),
    Data(title: 'diarrhoea', subtitle: 'اسهال', checked: false), 
    Data(title: 'dizziness', subtitle: 'دوخة', checked: false), 
    Data(title: 'excessive_hunger', subtitle: 'الجوع المفرط', checked: false), 
    Data(title: 'extra_marital_contacts', subtitle: 'اتصالات خارج الزوجية', checked: false),
    Data(title: 'fatigue', subtitle: 'ارهاق', checked: false), 
    Data(title: 'headache', subtitle: 'صداع', checked: false), 
    Data(title: 'high_fever', subtitle: 'ارتفاع درجة الحرارة', checked: false), 
    Data(title: 'increased_appetite', subtitle: 'زيادة الشهية', checked: false),
    Data(title: 'indigestion', subtitle: 'عسر هضم', checked: false), 
    Data(title: 'internal_itching', subtitle: 'حكة داخلية', checked: false), 
    Data(title: 'irregular_sugar_level', subtitle: 'مستوي السكر غير منتظم', checked: false), 
    Data(title: 'irritability', subtitle: 'هيجان', checked: false),
    Data(title: 'itching', subtitle: 'حكة', checked: false), 
    Data(title: 'lack_of_concentration', subtitle: 'قلة التركيز', checked: false), 
    Data(title: 'lethargy', subtitle: 'الخمول', checked: false), 
    Data(title: 'loss_of_appetite', subtitle: 'فقدان الشهية', checked: false),
    Data(title: 'loss_of_balance', subtitle: 'فقدان التوازن', checked: false), 
    Data(title: 'loss_of_smell', subtitle: 'فقدان الشم', checked: false), 
    Data(title: 'malaise', subtitle: 'توعك', checked: false), 
    Data(title: 'mild_fever', subtitle: 'حمي خفيفة', checked: false),
    Data(title: 'muscle_pain', subtitle: 'ألم عضلي', checked: false), 
    Data(title: 'muscle_wasting', subtitle: 'الهزال العضلي', checked: false), 
    Data(title: 'nodal_skin_eruptions', subtitle: 'الطفح الجلدي العقدي', checked: false), 
    Data(title: 'obesity', subtitle: 'البدانة', checked: false), 
    Data(title: 'passage_of_gases', subtitle: 'مرور الغازات', checked: false), 
    Data(title: 'patches_in_throat', subtitle: 'بقع في الحلق', checked: false), 
    Data(title: 'phlegm', subtitle: 'البلغم', checked: false), 
    Data(title: 'polyuria', subtitle: 'بوال', checked: false), 
    Data(title: 'redness_of_eyes', subtitle: 'احمرار العين', checked: false), 
    Data(title: 'red_spots_over_body', subtitle: 'بقع حمراء علي الجسم', checked: false), 
    Data(title: 'restlessness', subtitle: 'الارق', checked: false), 
    Data(title: 'runny_nose', subtitle: 'سيلان الانف', checked: false),
    Data(title: 'shivering', subtitle: 'الارتجاف', checked: false), 
    Data(title: 'sinus_pressure', subtitle: 'ضغط الجيوب الانفية', checked: false), 
    Data(title: 'skin_rash', subtitle: 'الطفح الجلدي', checked: false), 
    Data(title: 'spotting_urination', subtitle: 'التنقيط', checked: false),
    Data(title: 'stiff_neck', subtitle: 'تصلب الرقبة', checked: false), 
    Data(title: 'stomach_pain', subtitle: 'ألم المعدة', checked: false), 
    Data(title: 'sunken_eyes', subtitle: 'العيون غارقة او مكسورة', checked: false), 
    Data(title: 'sweating', subtitle: 'التعرق', checked: false),
    Data(title: 'swelled_lymph_nodes', subtitle: 'تورم الغدد الليمفاوية', checked: false), 
    Data(title: 'throat_irritation', subtitle: 'تهيج الحلق', checked: false), 
    Data(title: 'ulcers_on_tongue', subtitle: 'قرحة علي اللسان', checked: false), 
    Data(title: 'visual_disturbances', subtitle: 'اضرابات بصرية', checked: false),
    Data(title: 'vomiting', subtitle: 'التقيؤ', checked: false), 
    Data(title: 'watering_from_eyes', subtitle: 'سقي من العيون', checked: false),
  ]; 

   List<Data> display_data = [];

  @override
  void initState() {
    display_data = data;
    super.initState();
  }

  void updatelist(String value){
    List<Data> results = [];
    if(value.isEmpty){
      results = data;
    } else {
      results = data.where((element) => element.title.toLowerCase().contains(value.toLowerCase())).toList();
    }
    setState(() {
      display_data = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Symptoms"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 0, 0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  transform: Matrix4.translationValues(-5, -1, 0.0),
                  child: Image(
                    image: AssetImage("assets/WhatsApp1.jpg"),
                    alignment: Alignment.center,
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 5),
                Row(children: [
                  Expanded(
                    child: Text(
                      "Help us know how do you feel?",
                      style: TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold
                      )
                    )
                  ),
                  Icon(Icons.check, size: 70)
                ]),
                Text(
                  "Some diseases can be diagnosed based on common known symptoms of it. (check yours)",
                  style: TextStyle(
                    fontSize: 15, color: Colors.black, height: 1.6
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 370,
                  child: TextField(
                    onChanged: (value) => updatelist(value),
                    decoration: InputDecoration(
                      hintText: "Search",
                      fillColor: const Color(0xFFf5f6f8),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.transparent)
                      ),
                      prefixIcon: const Icon(Icons.search_rounded),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 270,
                  child: 
                  display_data.isEmpty? const Center(child: Text("No result found", style: TextStyle(color: Colors.black),)) : 
                  ListView.builder(
                    itemCount: display_data.length,
                    itemBuilder: (BuildContext context, int index) => CheckboxListTile(
                      title: Text(display_data[index].title),
                      subtitle: Text(display_data[index].subtitle),
                      value: display_data[index].checked,
                      onChanged: (bool? value) {
                        setState(() {
                          display_data[index].checked = value!;
                        });
                      },
                    ),
                  ),  
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(370, 40)),
                  child: Text(
                    'Confirm',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}