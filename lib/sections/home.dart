import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 50,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: FilterChip(
                    label: const Text('Music'), onSelected: (val) {}),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 10,
              );
            },
          ),
        ),
        Expanded(
            child: ListView.separated(
          itemCount: 5,
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) {
            return Container(
              width: (MediaQuery.of(context).size.width),
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.grey),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ))
      ],
    );
  }
}
