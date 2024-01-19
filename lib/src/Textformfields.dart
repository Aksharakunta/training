import 'package:flutter/material.dart';
class TextForm extends StatefulWidget {
  const TextForm({super.key});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Form(
              key:formKey ,
              child: Column(
                children: [

                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "enter the name"),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFormField(
                          decoration: InputDecoration(hintText: "percentage"),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFormField(
                          decoration: InputDecoration(hintText: "enter the id"),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "enter the phone number"),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                    ),
                  ),

                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },

                        decoration: InputDecoration(hintText: "enter the email"),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: ()
                      {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Cash(),));
                        }

                      }, child: Text('Submit'))
                ],
              ),

          ),
        ),
      ),
    );
  }
}
class Cash extends StatefulWidget {
  const Cash({super.key});

  @override
  State<Cash> createState() => _CashState();
}

class _CashState extends State<Cash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
