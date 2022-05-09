import 'package:flutter/material.dart';
import 'package:khavchik/Business/provider.dart';
import 'package:khavchik/UI/LoginScreen/registration.dart';
import 'package:provider/provider.dart';

import '../LoginScreen/login_screen.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderVars>(
      builder: (context, provider, child) {
        return RefreshIndicator(
            onRefresh: () => provider.getUserData(),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: provider.loggedIn == true
                  ? ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        Container(
                          height: 250,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    "https://images.pexels.com/photos/349609/pexels-photo-349609.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                  ))
                              // gradient: LinearGradient(
                              //   colors: [Colors.orange, Colors.black],
                              //   begin: Alignment.centerLeft,
                              //   end: Alignment.centerRight,
                              //   stops: const [0.5, 0.9],
                              // ),
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Colors.orange,
                                    minRadius: 35.0,
                                    child: Icon(
                                      Icons.notifications,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white70,
                                    minRadius: 60.0,
                                    child: CircleAvatar(
                                      radius: 50.0,
                                      backgroundImage: NetworkImage(
                                          'https://images.pexels.com/photos/3338674/pexels-photo-3338674.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.orange,
                                    minRadius: 35.0,
                                    child: Icon(
                                      Icons.edit,
                                      size: 30.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                ),
                                width: 280,
                                child: Column(
                                  children: [
                                    Text(
                                      '${provider.loggedInUser?.name}',
                                      style: const TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '${provider.loggedInUser?.email}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 150,
                                color: Colors.orangeAccent,
                                child: ListTile(
                                  title: const Text(
                                    'I\'ve allergies ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: provider.loggedInUser
                                          ?.allergyProducts?.length,
                                      itemBuilder: (
                                        BuildContext context,
                                        int index,
                                      ) {
                                        return ListTile(
                                          title: Center(
                                            child: Text(
                                              "${provider.loggedInUser?.allergyProducts?[index]?.name}",
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 150,
                                color: Colors.deepOrangeAccent,
                                child: ListTile(
                                  title: const Text(
                                    'I\'ve Illness ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: provider
                                          .loggedInUser?.illness?.length,
                                      itemBuilder: (
                                        BuildContext context,
                                        int index,
                                      ) {
                                        return ListTile(
                                          title: Center(
                                            child: Text(
                                              "${provider.loggedInUser?.illness?[index]?.name}",
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: ListTile(
                                title: const Text(
                                  'Telephone Number',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  '${provider.loggedInUser?.number}',
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ),
                            ),
                            const Divider(),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: SizedBox(
                                    height: 70,
                                    child: Column(
                                      children: [
                                        const Text(
                                          'Your height',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.orange),
                                        ),
                                        Text(
                                          '${provider.loggedInUser?.height} cm',
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    height: 70,
                                    child: Column(
                                      children: [
                                        const Text(
                                          'Your weight',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.orange),
                                        ),
                                        Text(
                                          '${provider.loggedInUser?.weight} kg',
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),
                          ],
                        )
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Column(
                        children: [
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: CircleAvatar(
                                radius: 100.0,
                                backgroundImage: NetworkImage(
                                  "https://images.pexels.com/photos/3171129/pexels-photo-3171129.jpeg?auto=compress&cs=tinysrgb&w=1600",
                                ),
                              ),
                            ),
                          ),
                          const Center(
                            child: Text(
                              "You are using anonymous account\nto have individual analysis\nplease Sign In or Sign Up ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: OutlinedButton(
                              onPressed: () {
                                provider.deleteUSerCredentials();
                                provider.logout();
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    LoginScreen.routeName, (route) => false);
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.orange),
                            ),
                          ),
                          const Text("Or"),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: OutlinedButton(
                              onPressed: () {
                                provider.deleteUSerCredentials();
                                provider.logout();
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    RegistrationScreen.routeName,
                                    (route) => false);
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.orange),
                            ),
                          ),
                        ],
                      ),
                    ),
            ));
      },
    );
  }
}
