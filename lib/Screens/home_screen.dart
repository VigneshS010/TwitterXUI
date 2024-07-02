// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitterui/Widgets/bottom_bar.dart';
import 'package:twitterui/Widgets/post_design.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Icon(Icons.add),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 60,
            leading: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            actions: [
              const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              const SizedBox(
                width: 20,
              )
            ],
            backgroundColor: Colors.black,
            title: Center(
              child: Image.asset(
                "assets/X.jpg",
                height: 30,
                width: 30,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              child: Column(
                children: [
                  PostDesign(
                    profile: "assets/anonymous.jpg",
                    sender: "Google",
                    senderM:
                        "Introducing the new Gemini Ai, The new Version of Bard, A chat Bot Artificial Intelligence",
                    picture: "assets/gemini.jpg",
                    pmsg1: "google.com",
                    pmsg2: "LLM model develooped by Google",
                  ),
                  PostDesign(
                    profile: "assets/apple.jpg",
                    sender: "Apple",
                    senderM:
                        "Check out the latest updates in iOS 16, featuring enhanced privacy controls and new widgets",
                    picture: "assets/ios16.jpg",
                    pmsg1: "apple.com",
                    pmsg2: "New iOS 16 features by Apple",
                  ),
                  PostDesign(
                    profile: "assets/microsoft.jpg",
                    sender: "Microsoft",
                    senderM:
                        "Announcing Microsoft Copilot, your AI-powered assistant in the Office suite",
                    picture: "assets/copilot.png",
                    pmsg1: "microsoft.com",
                    pmsg2: "AI assistant by Microsoft",
                  ),
                  PostDesign(
                    profile: "assets/amazon.jpg",
                    sender: "Amazon",
                    senderM:
                        "Discover the new Echo Dot with improved sound quality and Alexa capabilities",
                    picture: "assets/echo.jpg",
                    pmsg1: "amazon.com",
                    pmsg2: "New Echo Dot by Amazon",
                  ),
                  PostDesign(
                    profile: "assets/facebook.jpg",
                    sender: "Meta",
                    senderM:
                        "Introducing the new Horizon Worlds, a VR social experience by Meta",
                    picture: "assets/horizon.webp",
                    pmsg1: "meta.com",
                    pmsg2: "VR social experience by Meta",
                  ),
                  PostDesign(
                    profile: "assets/tesla.jpg",
                    sender: "Tesla",
                    senderM:
                        "Unveiling the new Tesla Model S Plaid, the fastest electric car in the world",
                    picture: "assets/model_s.jpg",
                    pmsg1: "tesla.com",
                    pmsg2: "Fastest electric car by Tesla",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
