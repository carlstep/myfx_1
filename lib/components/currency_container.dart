import 'package:flutter/material.dart';
import 'package:myfx_1/components/country_list_bottom_sheet.dart';

class CurrencyContainer extends StatelessWidget {
  final String containerCurrencyName;

  const CurrencyContainer({
    super.key,
    required this.containerCurrencyName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 160,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              containerCurrencyName,
              style: const TextStyle(fontSize: 18, color: Colors.black87),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('currency name...'),
                    SizedBox(
                      width: 30,
                    ),
                    Text('currency code...'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 400,
                              child: ShowCountryListBottomSheet(),
                            );
                          },
                        );
                      },
                      child: const CircleAvatar(
                        radius: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        width: 280,
                        child: const TextField(
                          style: TextStyle(fontSize: 30),
                          decoration: InputDecoration(
                              fillColor: Colors.white30,
                              enabledBorder: OutlineInputBorder(),
                              hintText: 'enter a value..'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
