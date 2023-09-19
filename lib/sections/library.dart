import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [Icon(Icons.history), Text('History')],
              ),
              Text(
                'View all',
                style: TextStyle(color: Colors.lightBlue),
              )
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.separated(
              padding: const EdgeInsets.only(left: 16.0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  width: 160,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 20,
                );
              },
              itemCount: 20),
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [Icon(Icons.history), Text('Playlist')],
              ),
              Text(
                'View all',
                style: TextStyle(color: Colors.lightBlue),
              )
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.separated(
              padding: const EdgeInsets.only(left: 16.0),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  width: 160,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 20,
                );
              },
              itemCount: 20),
        ),
        const Divider(),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [Icon(Icons.play_arrow_rounded), Text('Your Videos')],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [Icon(Icons.download), Text('Downloads')],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [Icon(Icons.roller_shades), Text('Your Movies')],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
