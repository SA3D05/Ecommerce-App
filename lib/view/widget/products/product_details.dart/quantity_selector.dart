import 'package:flutter/material.dart';

class QuantitySelectorDetails extends StatelessWidget {
  final int count;
  final void Function()? onAdd;
  final void Function()? onRemove;

  const QuantitySelectorDetails(
      {super.key, required this.count, this.onAdd, this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Quantity"),
        const SizedBox(
          width: 15,
        ),
        Container(
          height: 40,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: onAdd,
                icon: const Icon(Icons.add),
              ),
              Text("$count"),
              IconButton(
                onPressed: onRemove,
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        )
      ],
    );
  }
}
