import 'package:flutter/material.dart';

class TodoHorizontalItem extends StatefulWidget {
  final Color color;
  const TodoHorizontalItem({
    super.key,
    r,
    required this.color,
  });

  @override
  State<TodoHorizontalItem> createState() => _TodoHorizontalItemState();
}

class _TodoHorizontalItemState extends State<TodoHorizontalItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hi',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange[100],
                  ),
                  child: const Icon(
                    Icons.people,
                    color: Colors.orange,
                    size: 25,
                  ),
                ),
              ],
            ),
            const Text(
              'Sunday, December 11, 2022',
              style: TextStyle(
                  fontSize: 14,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Divider(
              height: 40,
              thickness: 3,
            ),
            const Text(
              'Description :',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit Ut ',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Teams :',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    Text(
                      'Progress :',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26),
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
                                image: AssetImage('assets/png/santa.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
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
                                image: AssetImage('assets/png/oldman.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ],
                ),
                const Text(
                  '50%',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
