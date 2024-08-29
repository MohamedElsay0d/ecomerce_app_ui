import 'package:flutter/material.dart';

import 'HottesTab.dart';
import 'RecommendListView.dart';

class HomepageContent extends StatelessWidget {
  const HomepageContent({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            'Hello $name, What fruit salad\ncombo do you want today?',
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .75,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for fruit salad combos',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.segment_outlined,
                    color: Color(0xFFFFB347),
                  ))
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Recommended Combo',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const RecommendListview(),
          const SizedBox(height: 12),
          const TabBar(
            tabs: [
              Tab(text: 'Hottest'),
              Tab(text: 'Popular'),
              Tab(text: 'New combo'),
              Tab(text: 'Top'),
            ],
          ),
          // const SizedBox(height: 10),
          const Expanded(
            child: TabBarView(
              children: [
                HottestTab(),
                Center(child: Text('Popular Content')),
                Center(child: Text('New Combo Content')),
                Center(child: Text('Top Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
