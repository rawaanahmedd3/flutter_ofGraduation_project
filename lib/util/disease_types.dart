import 'package:flutter/material.dart';

@immutable
class DiseaseTypeEntry {
  const DiseaseTypeEntry({
    required this.id,
    required this.type,
    required this.shortLabel,
    required this.risk,
    required this.description,
    required this.descriptionShort,
    required this.riskText,
    required this.picture,
    required this.link,
    this.buttonLink,
    this.linkLabel,
  });

  final String id;
  final String type;
  final double risk;
  final String shortLabel;
  final String description;
  final String descriptionShort;
  final String riskText;
  final String picture;
  final String link;
  final String? buttonLink;
  final String? linkLabel;
}

final List<DiseaseTypeEntry> cTypes = [
  const DiseaseTypeEntry(
      id: '1',
      type: "Anemia",
      shortLabel: "Anemia",
      risk: 0.9,
      description: "",
      descriptionShort:
          "Anemia is a medical condition characterized by a decrease in the number of red blood cells (RBCs) or a decrease in the amount of hemoglobin, the protein responsible for carrying oxygen in the blood. It is not a specific disease but rather a symptom of an underlying health problem." +
              "In a person with anemia, the reduced number of red blood cells or low hemoglobin levels impairs the blood's ability to transport oxygen efficiently to the body's tissues and organs. This can lead to a variety of symptoms, including fatigue, weakness, pale skin, shortness of breath, dizziness, headache, rapid heartbeat, and difficulty concentrating. Severe anemia may cause chest pain, angina, or even heart failure.",
      link: "https://www.skincancer.org/skin-cancer-information/melanoma/",
      riskText: 'MediumTreatment',
      picture: "assets/images/anemia.jpg"),
  const DiseaseTypeEntry(
      id: '2',
      type: "No-Anemia",
      shortLabel: "No-Anemia",
      risk: 0.9,
      description: "",
      descriptionShort:
          "In a person without anemia, the number of red blood cells (RBCs) and the amount of hemoglobin in the blood are within the normal range. This allows for effective transportation of oxygen to the body's tissues and organs." +
              "Individuals without anemia generally experience normal levels of energy and vitality. They have adequate oxygenation of the body, which contributes to a healthy skin color, normal breathing, and a regular heartbeat. Without the characteristic symptoms of anemia, such as fatigue, weakness, and shortness of breath, they are generally able to engage in physical activities and maintain their daily routines without significant limitations.",
      link: "https://www.skincancer.org/skin-cancer-information/melanoma/",
      riskText: 'highTreatment',
      picture: "assets/images/healthy_1.webp"),
  const DiseaseTypeEntry(
      id: '3',
      type: "Chronic",
      shortLabel: "Chronic",
      risk: 0.9,
      description: "",
      descriptionShort:
      "Chorionic kidney, also known as horseshoe kidney, is a congenital abnormality of the kidneys. It occurs during early fetal development when the two kidneys fuse together at the lower ends, forming a horseshoe-shaped structure. This fusion typically happens at the level of the lower poles of the kidneys."+"In a chorionic kidney, the fused kidneys remain in the lower abdomen and are positioned closer to the midline than the normal kidneys. They are usually located lower than the usual kidney placement, just above the pelvic area."+"Chorionic kidney can lead to certain complications and health issues. Some individuals with this condition may experience urinary tract obstruction, kidney stones, increased risk of urinary tract infections, and a higher likelihood of kidney-related disorders such as polycystic kidney disease or renal cancer. In some cases, it may also be associated with other congenital anomalies or genetic conditions."+"Treatment for chorionic kidney is usually focused on managing any associated complications or symptoms. In most cases, surgical intervention is not necessary unless there are specific complications that require medical attention. Regular monitoring by a healthcare professional is often recommended to ensure early detection and management of any potential issues.",
      link: "https://www.skincancer.org/skin-cancer-information/melanoma/",
      riskText: 'Treatment Requiured',
      picture: "assets/images/chronic.jpg"),
  const DiseaseTypeEntry(
      id: '4',
      type: "Not-Chronic",
      shortLabel: "Not-Chronic",
      risk: 0.9,
      description: "",
      descriptionShort:"For healthy individuals without a chorionic kidney, it means they possess a normal kidney anatomy and function. A healthy kidney is a vital organ responsible for filtering waste products, excess fluids, and toxins from the bloodstream, maintaining electrolyte balance, and producing hormones that regulate blood pressure and red blood cell production."+"In individuals without a chorionic kidney, each kidney is typically separate and located in its normal position within the abdominal cavity. The kidneys are responsible for filtering blood, removing waste products, and producing urine, which is then transported to the bladder for elimination."+"A healthy individual with normal kidney function generally experiences no significant symptoms or complications related to kidney health. However, maintaining kidney health is important for overall well-being. Adopting a healthy lifestyle, including staying well-hydrated, eating a balanced diet, exercising regularly, and avoiding excessive alcohol consumption and tobacco use, can help support optimal kidney function.",
      link: "https://www.skincancer.org/skin-cancer-information/melanoma/",
      riskText: 'No Treatment Requiured',
      picture: "assets/images/healthy_1.webp")
];
