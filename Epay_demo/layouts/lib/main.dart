import 'package:flutter/material.dart';

/*
 
 * Programmer: Semosa Promise
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

//________________________________________________________________________________________________________________________________//
//class for HomeScreen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        leading: const Icon(
          Icons.close,
          size: 30,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title: const Text(
          'Welcome to ePay',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // White Circle with Green Icon
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  color: Colors.white, // Circle color
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.attach_money,
                    size: 120,
                    color: Colors.green, // Icon color
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'More Money in Your Pocket',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              // Main Menu Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Background color
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {
                  // Navigate to Main Menu Screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainMenuScreen()),
                  );
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Main Menu',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 30),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Check Rates Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Background color
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {
                  // Action for Check Rates
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Check Rates',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // WhatsApp ePay Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Background color
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {
                  // Action for WhatsApp ePay
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WhatsApp ePay',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 0),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Forgot Your Pin?\nDial *134*542# to Reset it',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Epay Menu
//____________________________________________________________________________________________________
class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ePay Menu', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),

//__________________________________________________________________________________________________
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 14,
              ),
              Card(
                elevation: 9,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: ListTile(
                  title: const Column(
                    children: [
                      Icon(
                        Icons.people,
                        size: 40,
                        color: Colors.green,
                      ),
                      Text('Recipients',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))
                    ],
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward,
                    size: 40,
                    color: Colors.green,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RecipientsScreen()),
                    );
                  },
                ),
              ),

              //__________________________________________________________________________________________________
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 9,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: const ListTile(
                  title: Column(
                    children: [
                      Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.green,
                      ),
                      Text('My Profile',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))
                    ],
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    size: 40,
                    color: Colors.green,
                  ),
                ),
              ),

              //__________________________________________________________________________________________________

              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 9,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: const ListTile(
                  title: Column(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 40,
                        color: Colors.green,
                      ),
                      Text('Contact ePay',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))
                    ],
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    size: 40,
                    color: Colors.green,
                  ),
                ),
              ),
//__________________________________________________________________________________________________

              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 9,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: const ListTile(
                  title: Column(
                    children: [
                      Icon(
                        Icons.logout,
                        size: 40,
                        color: Colors.green,
                      ),
                      Text('Sign out',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))
                    ],
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    size: 40,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

//List of Recipients Screen
class RecipientsScreen extends StatelessWidget {
  RecipientsScreen({super.key});

  final List<Map<String, String>> recipients = [
    {'name': 'John', 'phone': '078654323'},
    {'name': 'Mary', 'phone': '074654313'},
    {'name': 'Smith', 'phone': '068654323'},
    {'name': 'Johnson', 'phone': '079654323'},
    {'name': 'Phillip', 'phone': '075654323'},
    {'name': 'George', 'phone': '078654323'},
    {'name': 'Gerry', 'phone': '078654323'},
    {'name': 'Jane', 'phone': '076 4548 1223'},
    {'name': 'Promise', 'phone': '074 033 8553'},
    {'name': 'Story', 'phone': '084 256 1001'},
    {'name': 'Greene', 'phone': '064 154 4471'},
    {'name': 'Tod', 'phone': '062 014 2415'},
    {'name': 'Kevin', 'phone': '063 487 4457'},
  ];

  //List menu
  //_____________________________________________________________________________

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List of Recipients',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.cyan,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),

      //___________________________________________________________________________________
      body: ListView.builder(
        itemCount: recipients.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: const Icon(Icons.person),
                title: Text(recipients[index]['name']!),
                subtitle: Text(recipients[index]['phone']!),
                trailing: TextButton(
                  onPressed: () {
                    // Implement the send money functionality here
                  },
                  child: const Text('Send Money'),
                ),
              ),
              const Divider(
                height: 10,
              ), // Adds a divider
            ],
          );
        },
      ),
    );
  }
}
