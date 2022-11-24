import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:counter_7/drawer.dart';

// Budget class
class Budget {
  const Budget(this.title, this.nominal, this.type, this.date);
  final String title;
  final int nominal;
  final String type;
  final DateTime date;
}

class ListBudget {
  static List<Budget> budgetList = [];
}

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleForm = TextEditingController();
  final _nominalForm = TextEditingController();

  String budgetTitle = "";
  int nominal = 0;
  String budgetType = "Type";
  List<String> budgetTypeList = ["Income", "Expense"];
  DateTime? date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Budget Form"),
      ),
      // Menambahkan drawer
      drawer: const MyDrawer(),
      body: Form(
          key: _formKey,
          child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              controller: _titleForm,
                              decoration: InputDecoration(
                                hintText: "Lunch",
                                labelText: "Title",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  budgetTitle = value!;
                                });
                              },
                              onSaved: (String? value) {
                                setState(() {
                                  budgetTitle = value!;
                                });
                              },
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return "Title can't be empty!";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: _nominalForm,
                              decoration: InputDecoration(
                                hintText: "0",
                                labelText: "Nominal",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (String? value) {
                                setState(() {
                                  nominal = int.parse(value!);
                                });
                              },
                              onSaved: (String? value) {
                                setState(() {
                                  nominal = int.parse(value!);
                                });
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Nominal can't be empty!";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 10),
                            DropdownButtonFormField(
                              hint: Text(budgetType),
                              isExpanded: true,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              elevation: 16,
                              items: budgetTypeList.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  budgetType = value!;
                                });
                              },
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return "You have to choose one!";
                                }
                                return null;
                              },
                            ),
                          ])),
                  const SizedBox(height: 10),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2025),
                        ).then((value) {
                          setState(() {
                            date = value;
                          });
                        });
                      },
                      child: Text(date == null
                          ? "Choose a date"
                          : "${date!.day}-${date!.month}-${date!.year}"),
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate() && date != null) {
                          ListBudget.budgetList.add(
                              Budget(budgetTitle, nominal, budgetType, date!));
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 15,
                                child: ListView(
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  shrinkWrap: true,
                                  children: <Widget>[
                                    const Center(
                                        child: Text(
                                      "New budget successfully added! Go to budget list to view.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    const SizedBox(height: 20),
                                    Center(
                                      child: Column(children: [
                                        Text('Title: $budgetTitle'),
                                        Text('Nominal: $nominal'),
                                        Text(
                                            'Date: ${date!.day}-${date!.month}-${date!.year}'),
                                        Text(
                                          'Type: $budgetType',
                                          style: TextStyle(
                                              color: budgetType == "Income"
                                                  ? Colors.green
                                                  : Colors.pink),
                                        ),
                                      ]),
                                    ),
                                    const SizedBox(height: 10),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          _titleForm.clear();
                                          _nominalForm.clear();
                                          budgetType = "Type";
                                          date = null;
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Go Back"),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
