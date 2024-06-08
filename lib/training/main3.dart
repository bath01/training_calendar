import 'package:flutter/material.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final _formkey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final contactController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    nameController.dispose();
    contactController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Nom et prenom',
                    hintText: 'Bath dorgeles kouakou',
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Tu dois remplis ce champs";
                  }
                  return null;
                },
                controller: nameController,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Contact',
                    hintText: 'Entrez vos contacts',
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Tu dois remplis ce champs";
                  }
                  return null;
                },
                controller: contactController,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'B', child: Text('Bath')),
                    DropdownMenuItem(value: 'A', child: Text('Anni')),
                    DropdownMenuItem(value: 'C', child: Text('Com'))
                  ],
                  decoration: const InputDecoration(border: OutlineInputBorder()),
                  value: 'A',
                  onChanged: (value) {}),
            ),
                
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        final nameCont = nameController.text;
                        final contactCont = contactController.text;
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Envoie en cours ...")));
                        print("$nameCont et $contactCont");
                      }
                    },
                    child: const Text(
                      'Envoyer',
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}
