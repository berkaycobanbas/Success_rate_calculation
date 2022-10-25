import 'package:flutter/material.dart';

class SuccessRateCalculationScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SuccessRateCalculationScreenState createState() =>
      _SuccessRateCalculationScreenState();
}

class _SuccessRateCalculationScreenState
    extends State<SuccessRateCalculationScreen> {
  final TextEditingController _t1 = TextEditingController(text: "0");
  final TextEditingController _t2 = TextEditingController(text: "0");
  double vizeNotu = 0;
  double finalNotu = 0;
  double ortalama = 0;
  void ortalamayiHesapla() {
    setState(() {
      vizeNotu = double.parse(_t1.text);
      finalNotu = double.parse(_t2.text);
      ortalama = (finalNotu + vizeNotu) / 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Not Uygulaması"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ortalamayiHesapla();
        },
        child: Icon(Icons.add),
      ),
      body: uygulamaGovdesi(),
    );
  }

  Widget uygulamaGovdesi() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: TextField(
                decoration: const InputDecoration(hintText: "Vize Notu"),
                controller: _t1,
              ),
            ),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              child: TextField(
                controller: _t2,
                decoration: const InputDecoration(hintText: "Final Notu"),
              ),
            ),
          ],
        ),
        const Divider(
          color: Colors.blue,
          height: 40,
          indent: 2,
        ),
        Container(
          height: 70,
          color: Colors.blue.shade600,
          child: Center(
            child: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                      text: "Ortalama :",
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                  TextSpan(
                      text: "$ortalama",
                      style:
                          const TextStyle(fontSize: 30, color: Colors.yellow)),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
