import 'package:flutter/material.dart';

import 'Cons.dart';
import 'Sri.dart';
//import 'package:flutter/services.dart';
//import 'package:my_project/pages/constants.dart';
//import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Emergency"),
        ),
        body: Container(
          //color: Color.fromARGB(172, 190, 139, 155),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1588268393007-068bc70a443d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZW1lcmdlbmN5fGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Image.network(
                //    'data:image/jpeg;base64,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'),
                Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Cons.vi('First - Aid', "-> cdes", "-> cdes", "-> abcd",
                          "", "", "", "", "", "", ""),
                      Container(
                          child: Center(
                              child: Cons.vi(
                                  'Snake Bite',
                                  "->Immediately move away from the area where the bite occurred. If the snake is still attached use a stick or tool to make it let go.",
                                  "->Remove anything tight from around the bitten part of the body (e.g.: rings, anklets, bracelets) as these can cause harm if swelling occurs.",
                                  "->Applying pressure at the bite site with a pressure pad may be suitable in some cases.",
                                  "->Transport the person to a health facility as soon as possible",
                                  "->Paracetamol may be given for local pain (which can be severe).",
                                  "->Vomiting may occur, so place the person on their left side in the recovery position.",
                                  "Closely monitor airway and breathing and be ready to resuscitate if necessary.",
                                  "",
                                  " ",
                                  ""))),
                      Center(
                          child: Cons.vi(
                              'Drowning',
                              "-> Place the drowning person on their back on a flat surface, \n and be careful when handling them as they may be unconscious after bumping their head against something.",
                              "-> Try to call the drowning person and shake their shoulders to make sure they are responding.\n If the person does not respond, check their breathing.",
                              "-> If the person is breathing:\n  Place them in the recovery position and warm them up with clothes or blankets. ",
                              "-> Change their wet clothes while waiting for the ambulance.",
                              "",
                              "",
                              "",
                              "",
                              "",
                              "")),
                    ])),
                const Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20)),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Cons.vi(
                              'Electric Shock',
                              "-> Place the drowning person on their back on a flat surface, and be careful when handling them as they may be unconscious after bumping their head against something.",
                              "-> Try to call the drowning person and shake their shoulders to make sure they are responding.If the person does not respond, check their breathing.",
                              "-> If the person is breathing: Place them in the recovery position and warm them up with clothes or blankets. Change their wet clothes while waiting for the ambulance.",
                              "->Begin CPR if the person shows no signs of circulation, such as breathing, coughing or movement.",
                              "->Apply a bandage. Cover any burned areas with a sterile gauze bandage, if available, or a clean cloth. Don't use a blanket or towel, because loose fibers can stick to the burns.",
                              "->Turn off the source of electricity, if possible. If not, use a dry, nonconducting object made of cardboard, plastic or wood to move the source away from you and the injured person.",
                              "->Electric shocks can also cause compartment syndrome. This happens when muscle damage causes your limbs to swell. In turn, this can compress arteries, leading to serious health problems. ",
                              "",
                              "",
                              "")),
                      Center(
                          child: Cons.vi(
                              'Fits',
                              "-> Place the drowning person on their back on a flat surface, and be careful when handling them as they may be unconscious after bumping their head against something.",
                              "-> Try to call the drowning person and shake their shoulders to make sure they are responding.If the person does not respond, check their breathing.",
                              "-> If the person is breathing: Place them in the recovery position and warm them up with clothes or blankets. Change their wet clothes while waiting for the ambulance.",
                              "->n adults, the most common cause of a seizure, also known as a convulsion or fit, is epilepsy. ",
                              "->it can be caused by other things, including a head injury, alcohol poisoning, lack of oxygen, after taking certain drugs, or if someone with diabetes has a 'hypo' where their blood glucose is too low.",
                              "->Try to prevent the injured person from becoming chilled.",
                              "",
                              "",
                              "",
                              "")),
                      Center(
                          child: Cons.vi(
                              'Bleeding',
                              "-> Place the drowning person on their back on a flat surface, and be careful when handling them as they may be unconscious after bumping their head against something.",
                              "-> Try to call the drowning person and shake their shoulders to make sure they are responding.If the person does not respond, check their breathing.",
                              "-> If the person is breathing: Place them in the recovery position and warm them up with clothes or blankets. Change their wet clothes while waiting for the ambulance.",
                              "->Applying pressure to the wound is the best way to stop it bleeding.",
                              "->Raise the injured area",
                              "->Apply direct pressure to the bleeding wound",
                              "->clothing that is soaked with blood bandages that are soaked with blood",
                              "->Applying ice to a wound will constrict the blood vessels, allowing a clot to form more quickly and stop the bleeding.",
                              "->Tea is a popular remedy to treat bleeding after dental work. Place a steeped black teabag that has been allowed to cool in the fridge on the wound.",
                              "")),
                    ]),
                const Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Cons.vi(
                            'Stroke',
                            "->At the time of the stroke note the time of the onset of symptoms of the person.",
                            "->Since certain treatments can only be administered during a specific timeframe from the onset of symptoms.",
                            "->Perform CPR, if needed.",
                            "->If you observe someone having a stroke and then falling unconscious, check for a pulse and breathing.",
                            "->Do not go to sleep.",
                            "->When a stroke first occurs, sudden sleepiness can set in.",
                            "->Do not take or give medication, food, or drinks.",
                            "->Taking certain medication, such as aspirin, can make a stroke worse",
                            "->Do not drive yourself or someone else to the emergency room.",
                            "")),
                  ],
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
