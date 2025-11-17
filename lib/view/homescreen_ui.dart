import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenUI extends StatefulWidget {
  const HomeScreenUI({super.key});

  @override
  State<HomeScreenUI> createState() => _HomeScreenUIState();
}

class _HomeScreenUIState extends State<HomeScreenUI> {
  final List<String> searchBarHints = [
    "Pay to anyone by UPI",
    "Pay friends and merchants",
    "Pay by name or phone number ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            ///SESRCH OPTION
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Stack(
                      children: [
                        TextField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            filled: true,
                            fillColor: Colors.grey[850],
                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: 50, // 👈 give height to carousel
                            child: CarouselSlider(
                              options: CarouselOptions(
                                height: 50,
                                viewportFraction: 1,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 3),
                                scrollDirection: Axis.vertical,
                                enableInfiniteScroll: true,
                              ),
                              items: searchBarHints.map((hint) {
                                return Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    hint,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                ],
              ),
            ),

            /// PROFILE IMAGE
            Image.asset(
              "assets/images/gpay1_bg.png",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            /// OPTIONS SECTION
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  gPayOptions(
                    "assets/images/gp_qr_scan.svg",
                    "Scan any\nQR Code",
                  ),
                  gPayOptions("assets/images/gp_pay_anyone.svg", "Pay\nAnyone"),
                  gPayOptions(
                    "assets/images/gp_bank_transfer.svg",
                    "Bank\nTransfer",
                  ),
                  gPayOptions(
                    "assets/images/gp_mobile.svg",
                    "Mobile\nRecharge",
                  ),
                ],
              ),
            ),

            /// UPI ID
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[900],
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.crisis_alert_outlined,
                            color: Colors.blue[400],
                            size: 18,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Tap & Pay",
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    DottedBorder(
                      borderType: BorderType.RRect, // rounded rect border
                      radius: const Radius.circular(6),
                      dashPattern: const [5, 3],
                      strokeWidth: 2,
                      color: const Color.fromARGB(255, 60, 59, 59),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        color: Colors.transparent,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.blue[400],
                                size: 15,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Activate UPI Lite',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 15),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[900],
                      ),
                      child: Text(
                        "UPI ID : gpayuser1234@oksbi",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),

            ///PEOPLE SECTION
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "People",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  peopleSection("assets/images/gp_user1.jpeg", "Aanya"),
                  peopleSection("assets/images/gp_user2.jpeg", "Meera"),
                  peopleSection("assets/images/gp_user3.jpeg", "Arjun"),
                  peopleSection("assets/images/gp_user4.jpeg", "Ishita"),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  peopleSection("assets/images/gp_user5.jpeg", "Dev"),
                  peopleSection("assets/images/gp_user6.jpeg", "Priya"),
                  peopleSection("assets/images/gp_user7.jpeg", "Kavya"),
                  peopleSection("assets/images/gp_user8.jpeg", "Karan"),
                ],
              ),
            ),

            ///BILLS & RECHARGE SECTION
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    "Bills & recharges",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Manages",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue[400],
                    ),
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.blue[400],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  peopleSection("assets/images/gp_vi.png", "Vi\nPrepaid"),
                  peopleSection("assets/images/gp_jio.png", "Jio\nPrepaid"),
                  peopleSection(
                    "assets/images/gp_airtel.jpg",
                    "Airtel\nPrepaid",
                  ),
                  peopleSection(
                    "assets/images/gp_playstore.png",
                    "Google Play\nRecharge",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  gPayOptions(
                    "assets/images/gp_mobile.svg",
                    "Mobile\nRecharge",
                    30,
                  ),
                  gPayOptions("assets/images/gp_dth.svg", "DTH/Cable\nTV", 30),
                  gPayOptions(
                    "assets/images/gp_electricity.svg",
                    "Electricity\n          ",
                    30,
                  ),
                  gPayOptions(
                    "assets/images/gp_google_play.svg",
                    "Google\nPlay",
                    30,
                  ),
                ],
              ),
            ),

            ///BUSINESS
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    "Business",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Explore",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue[400],
                    ),
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.blue[400],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  peopleSection(
                    "assets/images/google_cloud.jpg",
                    "Google\nCloud",
                  ),
                  peopleSection(
                    "assets/images/grocery_store.jpg",
                    "Grocery\nShop",
                  ),
                  peopleSection("assets/images/gp_user3.jpeg", "Arjun\n"),
                  peopleSection(
                    "assets/images/gp_playstore.png",
                    "Google\nPlay Store",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            ///GIFTS CARDS & MORE
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    "Gift cards & more",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 10),
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
                            Icon(
                              Icons.subscriptions_outlined,
                              color: Colors.blue[400],
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Subscriptions',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'Buy plans from\nleading OTT\nplatforms',
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Get',
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
                            Icon(Icons.card_giftcard, color: Colors.blue[400]),
                            const SizedBox(height: 8),
                            const Text(
                              'Gift Cards',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            const Text('Get 30% cashback on Amazin Prime'),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Get ',
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

            //OFFERS & REWARDS
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    "Offers & rewards",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Image.asset("assets/images/offers_reward.png"),
            Image.asset("assets/images/gpay4_bg.png"),

            ///MANAGE YOUR MONEY SECTION
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "Manage your money",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
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
                            Icon(
                              Icons.local_activity_rounded,
                              color: Colors.blue[400],
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
                                'Apply Now',
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
                            Icon(
                              Icons.workspace_premium,
                              color: Colors.blue[400],
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Gold loan',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'Interest rate starting at 0.96% monthly',
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Apply Now',
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

            const SizedBox(height: 15),
            manageMoneyList(Icons.speed, "Check your CIBIL score for free"),
            const SizedBox(height: 15),
            manageMoneyList(Icons.history, "See transaction history"),
            const SizedBox(height: 15),
            manageMoneyList(Icons.account_balance, "Check bank balance"),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget gPayOptions(String imagePath, String work, [double radius = 15]) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.circular(radius),
          ),
          child: SvgPicture.asset(
            imagePath,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          work,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget peopleSection(String imagePath, String name) {
    return Column(
      children: [
        CircleAvatar(backgroundImage: AssetImage(imagePath), minRadius: 28),
        const SizedBox(height: 5),
        Text(
          name,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ],
    );
  }

  Widget manageMoneyList(IconData icon, String text) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue[400]),
      title: Text(text, style: TextStyle(fontSize: 18)),
      trailing: Icon(Icons.arrow_forward_ios, size: 15),
    );
  }
}
