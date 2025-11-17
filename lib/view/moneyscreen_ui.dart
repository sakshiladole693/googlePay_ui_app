import 'package:flutter/material.dart';

class MoneyScreenUI extends StatefulWidget {
  const MoneyScreenUI({super.key});

  @override
  State<MoneyScreenUI> createState() => _MoneyScreenUIState();
}

class _MoneyScreenUIState extends State<MoneyScreenUI> {
  final List<Map> transactionList = [
    {
      'image': "assets/images/gp_user1.jpeg",
      'name': "Aanya",
      'date': "20 October",
      "money": "₹2",
    },
    {
      'image': "assets/images/gp_user2.jpeg",
      'name': "Meera",
      'date': "19 October",
      "money": "₹132",
    },
    {
      'image': "assets/images/gp_user3.jpeg",
      'name': "Arjun",
      'date': "18 October",
      "money": "₹452",
    },
    {
      'image': "assets/images/gp_user4.jpeg",
      'name': "Ishita",
      'date': "16 October",
      "money": "₹56",
    },
    {
      'image': "assets/images/gp_user5.jpeg",
      'name': "Dev",
      'date': "16 October",
      "money": "₹32",
    },
    {
      'image': "assets/images/gp_user6.jpeg",
      'name': "Priya",
      'date': "15 October",
      "money": "₹21",
    },
    {
      'image': "assets/images/gp_user7.jpeg",
      'name': "Ksvya",
      'date': "15 October",
      "money": "₹32",
    },
    {
      'image': "assets/images/gp_user8.jpeg",
      'name': "Karan",
      'date': "03 October",
      "money": "₹352",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero, // Remove default padding
        children: [
          // Top Image Section
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/gpay6_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: 20),
                Text(
                  "Money",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Icon(Icons.more_vert, color: Colors.white, size: 30),
                SizedBox(width: 20),
              ],
            ),
          ),

          const SizedBox(height: 12),

          // Bank Account Card
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(
                height: 30,
                width: 30,
                "assets/images/sbi_logo.png",
              ),
            ),
            title: const Text('State Bank of India'),
            subtitle: const Text('Savings account\n••••1234'),
            trailing: TextButton(
              onPressed: () {},
              child: const Text(
                'Check balance',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),

          const SizedBox(height: 12),

          // CIBIL Score
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(
                height: 60,
                width: 60,
                "assets/images/credit_score.png",
              ),
            ),
            title: const Text('CIBIL score'),
            subtitle: const Text('Check for free, instantly'),
            trailing: TextButton(
              onPressed: () {},
              child: const Text('Check', style: TextStyle(color: Colors.blue)),
            ),
          ),

          const SizedBox(height: 15),

          // Credit for you title
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Credit for you',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 12),

          // Loan Cards
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Colors.grey[900],
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.local_activity_rounded,
                            color: Colors.orange,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Personal loan',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          const Text('Up to ₹10 lakh,\ninstant approval'),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Apply',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Colors.grey[900],
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.workspace_premium,
                            color: Colors.orange,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Gold loan',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          const Text('Interest rate starting at 0.96% monthly'),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Apply',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          // Transaction History Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Transaction history',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          // Transaction List
          ...transactionList.map((transaction) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(transaction['image']),
              ),
              title: Text(transaction['name']),
              subtitle: Text(transaction['date']),
              trailing: Text(
                transaction['money'],
                style: const TextStyle(fontSize: 15),
              ),
            );
          }),
        ],
      ),
    );
  }
}
