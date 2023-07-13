import 'package:flutter/material.dart';
import 'package:flutter_apps_msib/provider/palidrome_provider.dart';
import 'package:flutter_apps_msib/widget/alert/alertDialog_widget.dart';
import 'package:flutter_apps_msib/widget/button/button_common_widget.dart';
import 'package:flutter_apps_msib/widget/text_field/textfield_common_widget.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {




  TextEditingController name = TextEditingController();
  TextEditingController palidrome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var loadPalidrome = Provider.of<PalidromeProvider>(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background@3x.png"),
                fit: BoxFit.cover)),
        // margin: const EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                child: const Image(image: AssetImage("images/ic_photo@3x.png"),),
                
              ),
              const SizedBox(height: 50,),
              TextFieldCommonWidget(text: "Name",controller: name,),
              TextFieldCommonWidget(text: "Palidrome",controller: palidrome,),
              const SizedBox(height: 40,),
              
              ButtonCommonWidget(text: "CHECK",fungsi:(){
                loadPalidrome.polidromeCheck(palidrome.text);
                showDialog(context: context, builder: (context){
                    return CustomAlertDialogWidget(titleText: "Info", content:loadPalidrome.isPalidrome ? "isPalidrome" : "not Palidrome");
                  });
            
                }),
              ButtonCommonWidget(text: "NEXT", fungsi: (){
                
              }),
            ],
          ),
        ),
    );
  }
}
