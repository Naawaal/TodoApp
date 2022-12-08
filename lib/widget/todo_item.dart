import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Meeting With Client',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Redesign motion graphics...',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ]),
              const Icon(
                Icons.check_circle,
                color: Colors.blue,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Today   11:25',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/png/man.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                              image: AssetImage('assets/png/woman.png'),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
