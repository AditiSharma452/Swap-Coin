import 'package:flutter/material.dart';

//this class extends Stateful widget.
//State<> returning a State _SwapCoinMaterialPageState()
//State<> is used to specify generic type and make the code better.

class SwapCoinMaterialPage extends StatefulWidget {
  const SwapCoinMaterialPage({super.key});

  @override
  State<SwapCoinMaterialPage> createState() => _SwapCoinMaterialPageState();
}

//we make a private class where mutable variables can be created
//as it does'n have constant constructor

class _SwapCoinMaterialPageState extends State<SwapCoinMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,

      //App Bar with Title: Swap Coin.

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(
          'Swap Coin',
          style: TextStyle(color: Colors.white,fontWeight : FontWeight.bold)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //logo

            Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(255, 174, 166, 3),width:2),
                    shape:BoxShape.circle),
                  child: const Icon(
                    Icons.currency_exchange,
                    color: Colors.yellow,
                    size: 80,
                  ),
                ),



              const SizedBox(height: 35),

            //Text:
            //It displays the converted currency.


            Text(
              'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),

            //TextField:
            //It takes input from User.
            //When untyped, display text 'Please enter the amount in USD'.

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),

            //Button
            //button that when clicked converts the currency.
            //buton text is Convert.
            //result is the variable that converts input String into double.
            //result does the calculation and
            //returns the value to TextEditingController.

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 82.75;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 65),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
