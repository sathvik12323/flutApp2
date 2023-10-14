import 'package:flutter/material.dart';
import 'one.dart';

import 'main.dart';

class Jjj extends StatelessWidget {
  const Jjj({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Vis(),
    );
  }
}

class Vis extends StatelessWidget {
  const Vis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'material app',
        home: Scaffold(
            body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img/oo3.jpg"),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Color.fromARGB(255, 223, 62, 62).withOpacity(0.8),
                  BlendMode.dstATop),
            ),
          ),
          child: Center(
              child: ListView(children: [
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: FloatingActionButton(
                    child: Icon(Icons.navigate_before),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dup()));
                    },
                  ),
                ),
                Center(
                    child: (Text(
                  "Choose Your Appropriate Plants",
                  style: TextStyle(fontSize: 50),
                ))),
                Padding(padding: EdgeInsets.all(20)),
                Rogam.vish(
                    'Neem plant',
                    'ten.jpg',
                    " Treats Acne : neem has an anti-inflammatory property which helps reduces ancne",
                    " it Boosts the  Immunity power of the human body",
                    "Neem leaf is used for leprosy,eye disorders,bloody nose,stomach upset,diseases of hearth and blood vessels",
                    " the leaf is also used for birth control and to cause abortions",
                    "Goodbye dandruff: Boil a bunch of neem leaves till the water turns green,allow it to cool. After washing your hair with shampoo,cleanse it with water",
                    "Other skin disorders: Turmeric combined with a paste of neem leaves can also be used for itching,eczema,ring worms and some mild skin diseases",
                    "wound healer: Make a paste out of the neem leaves and dab it on your wounds or insect bites a few times a day till it heals. ",
                    "six7.jpg"),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Rogam.vish(
                    'Lemon',
                    'ten.jpg',
                    " One lemon provides about 31 mg of vitamin C, which is 51% of the RDI.eating fruits and vegetables rich in vitamin C reduces your risk of heart disease and stroke.",
                    " Citric acid may help prevent kidney stones ",
                    "The fiber and plant compounds in lemons could also significantly lower some risk factors for heart disease ",
                    " eating 24 grams of citrus fiber extract daily for a month reduced total blood cholesterol levels ",
                    "lemons contain both vitamin C and citric acid, they may protect against anemia by ensuring that you absorb as much iron as possible from your diet.",
                    "The main fiber in lemons is pectin, a form of soluble fiber linked to multiple health benefits",
                    "people who eat the most citrus fruit have a lower risk of cancer",
                    ""),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Rogam.vish(
                    'Aloevera',
                    'alo.jpg',
                    " one of the greatest benefits of Aloe vera is its beneficial effect on the digestive system ",
                    " the antibacterial and antifungal properties of Aloe vera helps to increase boold flow to the affected are, thus to help the healing process.",
                    " Aloe vera is used in the specialized Ayurveda therapy for removal of the slags from body tissues and especially from the blood ",
                    " in Ayurveda, Aloe vera powder often is used during virechana procedure ( body cleansing ) ",
                    " it improves the function of the kidneys, the liver and the gallbladder. ",
                    " Aloe vera is an excellent tonic for the liver,spleen, the reproductive and circulatory system  ",
                    " the classical Ayurvedic medicine uses fermented fel of aloe to produce tonic herbal wine, to be used as medicine for anemia problems ",
                    ""),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Rogam.vish(
                    'Tulasi',
                    'tc.jpg',
                    "tulsi is proven to be the safest skin cream that can be used and the benefits are massive ",
                    " tulsi can help prevent hair fall, tulsi can reduce dandruff",
                    " tulsi is a natural ingredient that aids weight loss. tulsi tea controls your body absorb essential nutrients",
                    " tulsi soothes the eyes, tulsi eyewash can also reduce strain on your eyes.",
                    "Vitamin C & A and phytonutrients are essential oils that re found in tulsi, which are used as excellent antioxidants",
                    " every time you get the urge to smoke, chew tulsi leaves.",
                    "tulsi can help cure fever,tulsi leaves are used to treat skin problems like acne,blackheads and premature ageing.",
                    ""),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Rogam.vish(
                    'Amla',
                    'amla.jpg',
                    "Enhances digestive health : Amalaki's potent sour taste is known to activate and support digestion",
                    " Maintains healthy blood sugar levels : Amalaki's ability to stimulate microcirculation and cleanse the blood help to promote healthy blood sugar levels already in the normal range.",
                    " Strengthens the bones, teeth, and nails : its tonifying and rejuvenating properties help strengthen the entire body",
                    "Fosters thick,healthy hair : Amla is reversed for its ability to nourish and rejuvenate the health of hair",
                    "Calms the mind and emotions : considered a brain tonic,amalki supports a clear mind and engances memory ",
                    " Amalaki can be especially supportive during the summer months when pitta's heat tends to accumulate in the body.",
                    " Total Body Cleanse : Amalaki is featured as the main ingredient in total body cleanse ",
                    ""),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Rogam.vish(
                    'Mint',
                    'mt.jpg',
                    " Helps in digestion : mint is rich in antioxidants,menthol and phytonutrients that help the enzymes to digest food ",
                    " Treats asthma : regularly taking pudina can ease chest congestion. the methanol in mint acts as a decongestant",
                    " cures Headaches : pudina contains menthol that can help relax muscles and ease the pain.",
                    " Eases stress and depression : one of the main advantages fo mint is that it is the most widely used herb in aromatherapy. ",
                    " pudina or mint has a strong,refreshing smell that can ease stress and refresh the body and mind.",
                    "Makes your skin healthy : pudina leaves contain a high amount of salicylic acid which acts as anti-acne",
                    "Improves Memory : According to a research, mint can improve memory and retrieve the cognitive function of the brain",
                    ""),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Rogam.vish(
                    'Ginger',
                    'ginger.jpg',
                    "Just 1–1.5 grams of ginger can help prevent various types of nausea, including chemotherapy-related nausea, nausea after surgery, and morning sickness",
                    "inger has been shown to speed up emptying of the stomach",
                    "One of the traditional uses of ginger is for pain relief, including menstrual pain.",
                    " There are some studies showing ginger to be effective at reducing symptoms of osteoarthritis, especially osteoarthritis of the knee.",
                    " ginger can lead to significant reductions in LDL (bad) cholesterol, total cholesterol, and blood triglyceride levels.",
                    "ginger can help protect against age-related decline in brain function",
                    "Ginger may help fight harmful bacteria and viruses, which could reduce your risk for infections.",
                    ""),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Rogam.vish(
                    'Peepal',
                    'peep.jpg',
                    "Improves lung power : peepal tree emits 2400 kgs of oxygen in a day and spending time under this tree helps a alot",
                    " the fruits and bark too aid in treating various breathing disorders like asthma",
                    " Cures poor appetite : A decrease in the hunger is caused due to various reasons be it stomach problems, emotional issues or even anxiety.",
                    " peepal tree fruit also known as sacred fig works wonders in treating loss of appetite.",
                    " Diarrhea with Blood : if you are suffering from diarrhea and notice blood, it is often an indication of poor dietary habits or food poising",
                    " Heals Toothache : in a bowl fo water,boil the barks of peepal tree and banyan tree and make it a habit ",
                    "purifies Blood : our healthy blood work often defines the health. it is important to get rid of toxins and flush out impurities to maintain good physical wellbeing and also to glow from within.",
                    ""),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Rogam.vish(
                    'Eucalyptus',
                    'euc.jpg',
                    " the active compounds in these leaves may have expectorant properties that help eliminate extra phlegm",
                    " Improves skin health : eucalyptus oil is more beneficial to treat inflammed skin.",
                    " Relieves Stress : Eucalyptus oil has powerful scent that might function as stimulant. in addition to acting as a mood booster",
                    " Eucalyptus essential oil also helps to reduce blood pressure and anxiety",
                    " For Maintaining good Hair Health : eucalyptus oil is effective in treating dandruff and head lice.",
                    " for Dental Health & Elimination of bad breath : the antibacterial properties of eucalyptus oil are perfect for people who desire to eliminate bad breath naturally",
                    "it is a natural remedy for various ailments of the whole body including hari and skin. tha health benefits of eucalyptus is excellent",
                    ""),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Rogam.vish(
                    'Sadabahar',
                    'sadaa.jpg',
                    "It is useful in treating gastritis, cystitis, enteritis, diarrhea, diabetes, etc when taken internally.",
                    "Sadabahar leaves and stems are a source of alkaloids that have anti tumor and anti cancer properties.",
                    "Sadabahar controls nosebleeds, bleeding gums, mouth ulcers and sore throats",
                    "Increasing blood circulation: Despite serious safety concerns, periwinkle is used for “brain health”",
                    "One can have herbal tea made from flowers and leaves in the morning or you can also chew some three to four leaves to get effective results.",
                    "Sadabahar has long been used in Ayurveda and Chinese medicines and is said to be a time-tested herbal treatment for managing conditions like diabetes, malaria, sore throats and leukaemia.",
                    "Take not more than three to four leaves of the plant and chew them to manage blood sugar levels through the day.",
                    ""),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
              ],
            )
          ]) //listview

              ),
        )));
  }
}
