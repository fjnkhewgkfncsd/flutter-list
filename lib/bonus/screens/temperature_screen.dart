import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TemperatureScreen extends StatelessWidget {
  const TemperatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: TempContainer(),
    );
  }
}

class TempContainer extends StatefulWidget {

  
  const TempContainer({
    super.key,
  });

  @override
  State<TempContainer> createState() => _TempContainerState();
}

class _TempContainerState extends State<TempContainer> {

  final InputDecoration inputDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(12),
    ),
    hintText: 'Enter a temperature',
    hintStyle: const TextStyle(color: Colors.white),
  );
  
  double? celsius;

  double get fahrenheit => (celsius != null) ? (celsius! * 9 / 5) + 32 : 0.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(
            Icons.thermostat_outlined,
            size: 120,
            color: Colors.white,
          ),
          const Center(
            child: Text(
              "Converter",
              style: TextStyle(color: Colors.white, fontSize: 45),
            ),
          ),
          const SizedBox(height: 60),
          TextField(
            keyboardType: TextInputType.number,
            decoration: inputDecoration,
            style: const TextStyle(color: Colors.white),
            onChanged: (value) => {
              setState(() {
                celsius = double.tryParse(value);
              })
            },
          ),
          const SizedBox(height: 30),
          const Text("Temperature in Fahrenheit:"),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(fahrenheit.toStringAsFixed(2)),
          ),
        ],
      ),
    );
  }
}
