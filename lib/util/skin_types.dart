import 'package:flutter/material.dart';

@immutable
class CancerTypeEntry {
  const CancerTypeEntry({
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

  final int id;
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

final List<CancerTypeEntry> cTypes = [
  const CancerTypeEntry(
      id: 1,
      type: "Acne-Rosacea",
      shortLabel: "Acne-Rosacea",
      risk: 0.9,
      description: "",
      descriptionShort:
          'Acne rosacea, commonly known as rosacea, is a chronic inflammatory skin condition that primarily affects the face. It typically develops in individuals over the age of 30, particularly those with fair skin. The exact cause of rosacea is not fully understood, but it is thought to involve a combination of genetic, environmental, and vascular factors.',
      link: "https://www.skincancer.org/skin-cancer-information/melanoma/",
      riskText: 'highTreatment',
      picture: "assets/images/Acne-Rosacea.jpg"),
  const CancerTypeEntry(
      id: 2,
      type: "Eczema",
      shortLabel: "Eczema",
      risk: 0.1,
      description: '',
      descriptionShort:
          'Eczema, also known as atopic dermatitis, is a common chronic skin condition that causes inflammation and itching. It typically starts in childhood but can persist into adulthood or even develop later in life. The exact cause of eczema is not fully understood, but it is believed to involve a combination of genetic and environmental factors.',
      link: "https://dermnetnz.org/topics/melanocytic-naevus",
      riskText: 'harmlessNoTreatment',
      picture: "assets/images/Eczema.jpg"),
  const CancerTypeEntry(
      id: 3,
      type: "Psoriasis-Relatives",
      shortLabel: "Psoriasis-Relatives",
      risk: 0.75,
      description: '',
      descriptionShort:
          'Psoriasis is a chronic autoimmune skin condition that causes the rapid buildup of skin cells. While it is a distinct condition, there are some other skin conditions that can be considered relatives of psoriasis due to their similarities in symptoms and underlying mechanisms. These conditions include:',
      link:
          "https://www.skincancer.org/skin-cancer-information/basal-cell-carcinoma/",
      riskText: 'highTreatmentRecommended',
      picture: "assets/images/Psoriasis-Relatives.jpg"),
  const CancerTypeEntry(
      id: 4,
      type: "Vitiligo",
      shortLabel: "Vitiligo",
      risk: 0.6,
      description: '',
      descriptionShort:
          'Vitiligo is a long-term skin condition characterized by the loss of pigment in certain areas of the skin, resulting in white patches. It occurs when the cells responsible for producing melanin, the pigment that gives color to the skin, hair, and eyes, are destroyed or stop functioning properly.',
      link:
          'https://www.skincancer.org/skin-cancer-information/actinic-keratosis/',
      riskText: 'mediumTreatment',
      picture: "assets/images/Vitiligo.jpg"),
];
