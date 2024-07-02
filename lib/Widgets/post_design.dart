import 'package:flutter/material.dart';

class PostDesign extends StatelessWidget {
  String profile;
  String sender;
  String senderM;
  String picture;
  String pmsg1;
  String pmsg2;
  PostDesign(
      {super.key,
      required this.profile,
      required this.sender,
      required this.senderM,
      required this.picture,
      required this.pmsg1,
      required this.pmsg2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  this.profile,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    sender,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.verified,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(".3h",
                      style: TextStyle(
                        color: Colors.white,
                      ))
                ],
              ),
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: const BoxDecoration(color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    senderM,
                    style: const TextStyle(fontSize: 13, color: Colors.white70),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.27,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 0.1)),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      picture,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        pmsg1,
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        pmsg2,
                        style: const TextStyle(color: Colors.white70),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: const BoxDecoration(color: Colors.black),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.message,
                      color: Colors.white70,
                      size: 20,
                    ),
                    Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.white70,
                      size: 20,
                    ),
                    Icon(
                      Icons.heart_broken_rounded,
                      color: Colors.white70,
                      size: 20,
                    ),
                    Icon(
                      Icons.bar_chart_sharp,
                      color: Colors.white70,
                      size: 20,
                    ),
                    Icon(
                      Icons.bookmark,
                      color: Colors.white70,
                      size: 20,
                    ),
                    Icon(
                      Icons.share_outlined,
                      color: Colors.white70,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
