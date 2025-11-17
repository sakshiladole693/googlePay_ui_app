import 'package:flutter/material.dart';

class ProfileScreenUI extends StatefulWidget {
  const ProfileScreenUI({super.key});

  @override
  State<ProfileScreenUI> createState() => _ProfileScreenUIState();
}

class _ProfileScreenUIState extends State<ProfileScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/gpay7_bg.png"),
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 80),
                      Text("Sakshi Ladole", style: TextStyle(fontSize: 25)),
                      const SizedBox(height: 10),
                      Text(
                        "UPI ID:\ngpayuser1234@oksbi",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      Text("9807654321", style: TextStyle(fontSize: 20)),
                      const SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check_circle, size: 15),
                            Text(
                              " UPI Number",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.more_vert),
                      const SizedBox(height: 80),
                      Stack(
                        children: [
                          Image.asset(height: 70, "assets/images/profile.png"),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                              ),
                              child: Icon(Icons.qr_code, size: 20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),

            /// Rewards & Refer Section
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _infoCard(
                    title: "₹33",
                    subtitle: "Rewards earned",
                    color: const Color.fromRGBO(108, 63, 4, 0.7),
                    icon: Icons.emoji_events,
                    textColor: Colors.amber,
                  ),
                  const SizedBox(width: 10),
                  _infoCard(
                    title: "Get ₹201",
                    subtitle: "Refer a friend",
                    color: const Color.fromRGBO(0, 191, 165, 0.3),
                    icon: Icons.group_add,
                    textColor: Colors.tealAccent,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),

            /// Payment setup options
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text(
                    "Set up payment methods 1/3",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _paymentOption(
                        icon: Icons.account_balance,
                        label: "Bank\naccount",
                        subLabel: "1 account",
                      ),
                      _paymentOption(
                        icon: Icons.credit_card,
                        label: "RuPay\ncredit card",
                        subLabel: "Pay with UPI",
                        color: Colors.blue[900],
                      ),
                      _paymentOption(
                        icon: Icons.flash_on,
                        label: "UPI Lite\n(PIN-free)",
                        subLabel: "Pay PIN-free",
                        color: Colors.blue[900],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            /// Other options
            _listTile(
              icon: Icons.payment,
              title: "Pay with credit or\ndebit cards",
              subtitle: "Pay bills with your card",
              trailing: "Add",
            ),
            const SizedBox(height: 20),
            _listTile(
              icon: Icons.qr_code,
              title: "Your QR code",
              subtitle: "Use to receive money from any\nUPI app",
            ),
            const SizedBox(height: 20),
            _listTile(
              icon: Icons.favorite_outline,
              title: "UPI Circle",
              subtitle: "Help people you trust make UPI...",
              trailing: "New",
            ),
            const SizedBox(height: 20),
            _listTile(icon: Icons.settings, title: "Settings"),
            const SizedBox(height: 5),
            _listTile(icon: Icons.person, title: "Manage Google Account"),
            const SizedBox(height: 5),
            _listTile(icon: Icons.help_outline, title: "Get help"),
            const SizedBox(height: 5),
            _listTile(
              icon: Icons.language,
              title: "Language",
              subtitle: "English",
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  /// Info cards (Rewards, Refer a friend)
  Widget _infoCard({
    required String title,
    required String subtitle,
    required Color color,
    required Color textColor,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Row(
        children: [
          Icon(icon, color: textColor, size: 32),
          const SizedBox(width: 8),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(color: textColor, fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Payment method icon buttons
  Widget _paymentOption({
    required IconData icon,
    required String label,
    required String subLabel,
    Color? color = Colors.transparent,
  }) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: color,
          child: Icon(icon, color: Colors.white, size: 28),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 17),
        ),
        Text(
          subLabel,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white70, fontSize: 14),
        ),
      ],
    );
  }

  /// List-style options (credit card, QR code, UPI circle)
  Widget _listTile({
    required IconData icon,
    required String title,
    String? subtitle,
    String? trailing,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.blue[400], size: 28),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle ?? "",
                  overflow: TextOverflow.fade,
                  style: const TextStyle(color: Colors.white60, fontSize: 15),
                ),
              ],
            ),
          ),
          if (trailing != null)
            Text(
              trailing,
              style: const TextStyle(
                color: Color.fromRGBO(66, 165, 245, 1),
                fontSize: 16,
              ),
            ),
        ],
      ),
    );
  }
}
