import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: size.height * 0.06,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                // textAlign: TextAlign.center,
                decoration: InputDecoration(
                  // hintText: 'Buscar...',
                  labelText: 'Buscar...',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  floatingLabelStyle:
                      const TextStyle(color: Colors.transparent),
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(size.width * 0.035),
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none),
                  ),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
