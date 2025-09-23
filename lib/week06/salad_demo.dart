import 'package:flutter/material.dart';

class SaladDemo extends StatefulWidget {
  const SaladDemo({super.key});

  @override
  State<SaladDemo> createState() => _SaladDemoState();
}

class _SaladDemoState extends State<SaladDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            color: Colors.deepPurple,
            child: const Text(
              "Cooking Recipes",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),

          const SizedBox(height: 10),

          // Title
          const Center(
            child: Text(
              "Papaya Salad",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 10),

          // Row: Description + Image & Rating
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left: Description
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple),
                    ),
                    child: const Text(
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. "
                      "Soluta ducimus in modi illo ad ipsa non officiis. "
                      "Ea placeat necessitatibus in aliquid ullam quasi porro vel dolores, "
                      "dignissimos quisquam aspernatur.",
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                // Right: Image + Rating
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Image
                      Container(
                        width: 300,
                        height: 150,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/salad.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Rating
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.black),
                        ],
                      ),
                      SizedBox(height: 10),
                      const Text("3128 reviews"),
                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Column(
                            children: const [
                              Icon(Icons.timelapse, color: Colors.deepPurple),
                              Text(
                                "PREP:",
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                              Text("5 mins"),
                            ],
                          ),
                          Column(
                            children: const [
                              Icon(Icons.timer_outlined, color: Colors.red),
                              Text(
                                "COOK:",
                                style: TextStyle(color: Colors.red),
                              ),
                              Text("10 mins"),
                            ],
                          ),
                          Column(
                            children: const [
                              Icon(Icons.restaurant, color: Colors.black),
                              Text("FEEDS:"),
                              Text("1-3"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
