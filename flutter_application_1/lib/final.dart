import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/testing.dart';
import 'main.dart';

class last extends StatelessWidget {
  // const last({Key? key}) : super(key: key);
  String m1 = "Medicine one";
  String m2 = "Medicine two";
  String ans = "the final answer";
  String xx = list.toString();
  String medicine = "not found combination \n please enter another combination";
  Map map = {
    [0, 3, 14]: "cough stomachPain",
  }; // it is only for declaration but not mandatory . this data is not useful

  // if(map.containsKey())
  // { m2 = "presenet"; }
  @override
  Widget build(BuildContext context) {
    map.addAll({
      "[0, 2, 3, 4]": "cold cough mildstone",
      "[0, 1, 2, 3]": " headache cold cough",
      "[0, 3, 14]": "cough stomachPain",
      "[0, 6, 8, 10, 12, 13]":
          "Your doctor may prescribe allopurinol (Zyloprim, Aloprim) to reduce uric acid levels \n . To prevent uric acid stones, cut down on high-purine foods such as red meat,\n organ meats, beer/alcoholic beverages, meat-based gravies, sardines, anchovies and shellfish"
    });

    satya.put("[0, 2, 3, 9, 11, 13]", "Common cold \n ");
    satya.put("[0, 5, 6, 7, 8, 9]",
        "\t\tyou are facing  diseases Gastroenteritis\n\n Medicines: \n ->loperamide (Imodium A-D) \n -> bismuth subsalicylate (Pepto-Bismol, others) to manage their symptoms.\n\n Bacterial gastroenteritis is sometimes treated with antibiotics. If severe cases are not treated, they can lead to severe dehydration, neurological problems, kidney failure, and even death. Good hygiene is the best way to prevent bacterial gastroenteritis.\nOral rehydration therapy is as effective as intravenous therapy in treating mild to moderate dehydration in acute gastroenteritis and is strongly recommended as the first line therapy. However, the oral rehydration solution is described as an underused simple solution.\n Ayurvedic tips:\n\n Some herbal medicines like Tinospora cordifolia (Guloochi), Embelia ribes (Vidanga), Glycyrrhiza glabra (Mulethi), Aegle marmelos (Bilva) and Holarrhena antidysenterica (Kutaja) improve intestinal health and are good for proper digestion. Panchakarma treatments (Detox programs including Vasti) will eliminate toxins.");
    satya.put("[0, 5, 7, 8, 10, 12]",
        "\t\tyou are facing diseasesfood intolernce\n\n Medicines: \n ->Epinephrine (for example, EpiPen® or Auvi-Q)\n\n A lifesaving emergency medication that immediately begins reversing symptoms of anaphylaxis.\n \nAyurvedic tips:\n Sanjeevani gutika and Haridra khanda at the initial or early stages of food induced anaphylactic reaction seems to be beneficial in preventing anaphylactic shock or further aggravation of condition \n\nDrink ginger tea.Take moderate amounts of seeds, honey, and nuts.Practice pranayama.Daily exercise.");
    satya.put("[0, 5, 6, 9, 14]",
        "\t\tyou are facing diseases kidney stones \n Medicines: \n ->allopurinol (Zyloprim, Aloprim) \n helps :to reduce uric acid levels in your blood and urine and a medicine to keep your urine alkaline. In some cases, allopurinol and an alkalizing agent may dissolve the uric acid stones.\n\n Ayurvedic tips: \n The juice of a lemon in normal or warm water is very effective for kidney stones. You can also add honey or salt to make it drinkable. Lemon juice helps in breaking the stones while honey acts as a lubricant for kidney stones to pass through the urine without any difficulty.\n\nAvoid :\n ->Chocolate, whole milk, ice cream, processed cheese, and egg yolks.\n->Fried, deep fried, or buttered foods.\n\n->Sausage, salami, and bacon.\n->Cinnamon rolls, cakes, pies, cookies, and other pastries.\n\n->Prepared snack foods, such as potato chips, nut and granola bars, and mixed nuts.");
    satya.put("[0, 6, 7, 15]",
        " \t\tyou are facing Gallbladder\n\n Medicines:\n-> Ursodiol is used to dissolve gallstones in patients who do not need to have their gallbladders removed or in those in whom surgery should be avoided because of other medical problems\n\n Ayurvedic tips:\n-> Mixing kalonji seeds with honey, kalonji or black seed oil and warm water.\n\n-> drinking this tonic on an empty stomach aids in dissolving gallstones\n\n Most people with appendicitis need a surgery called an appendectomy. It removes a diseased appendix. If the appendix hasn't yet ruptured, surgery prevents that rupture and keeps infection from spreading\n\nAyurvedic tips:\n Mixing kalonji seeds with honey, kalonji or black seed oil and warm water and drinking this tonic on an empty stomach aids in dissolving gallstones.");
    satya.put("[0, 5, 6, 7, 8, 10, 15]",
        "\t\tyou are facing diseases Appendiatis \n\nMedicines:\n-> piperacillin \n-> tazobactam (Zosyn)\n-> ampicillin \n ->sulbactam (Unasyn)\n-> ceftriaxone (Rocephin) \n->cefepime (Maxipime)\n \nAyurvedic tips:\n-> Traditional medicines will strengthen the muscles in the areas near appendix. The main remedies used are 'vazhuthina', 'kadukkathodu', asafoetida, 'vayambu' and 'trikolpakonna'.");
    satya.put("[0, 1, 4, 13, 16]",
        "\t\tyou are facing chickenpox\n\n->Medicines: -> acyclovir (Zovirax, Sitavig).\n\n->Ayurvedic tips:\n->According to Ayurveda, smallpox was considered to be a possession of the goddess Sitala. In age-old tradition, the person suffering from smallpox was externally treated with a mixture of neem, turmeric and flour. The purpose of this mixture was to create a cooling effect on the burning sensation caused by the pustules");
    satya.put("[0, 5, 7, 11, 16]",
        "\t\tyou are facing dengue fever\n Medicines: \n No specific treatment for dengue fever exists. While recovering from dengue fever, drink plenty of fluids. Call your doctor right away if you have any of the following signs and symptoms of dehydration: Decreased urination\n\nAyurvedic tips: \n ->Amrithotharam kashayam,Amritha satva(Sat giloy) are some of the good herbal medicines advised in Dengue fever\n\n-> Boil tulasi in water and drink this water throughout the day to build up immune system\n\n ->10-15 basil leaves should be chewed twice a day, to strengthen body's defence mechanism.");
    satya.put("[0, 2, 3, 4, 6, 8, 11]",
        "\t\tyou are facing diseases Flu \\n Medicines:\n->oseltamivir phosphate (available as a generic version or under the trade name Tamiflu®)\n\n->zanamivir (trade name Relenza®)\n->peramivir (trade name Rapivab®)\n->baloxavir marboxil (trade name Xofluza®).");
    //satya.put("[]")
    if (list.length < 3) {
      medicine = "please choose atleast two combinations";
    } else if (satya.containsKey(xx)) {
      medicine = satya.get(xx);
      print("match found Vishal" + medicine);
      print("the value of the key is ");
      print(satya.get(525));
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("img/three3.jpg"),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Color.fromARGB(255, 223, 62, 62).withOpacity(0.8),
              BlendMode.dstATop),
        ),
      ),
      child: Center(
          child: Column(
        children: [
          // Padding(padding: EdgeInsets.all(10)),
          // Text(m1),
          // Padding(padding: EdgeInsets.all(10)),
          // Text(m2),
          // Padding(padding: EdgeInsets.all(10)),
          // Text(list.toString()),

          SizedBox(height: 100),

          Align(
            alignment: Alignment.topLeft,
            child: FloatingActionButton(
              child: Icon(Icons.navigate_before),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Example()));
              },
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Center(
              child: Container(
            width: 1000,
            // color: Colors.grey,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: medicine,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 5, 5, 221))),
            ])),
          )),

          Padding(padding: EdgeInsets.all(10)),
        ],
      )),
    );
  }
}
