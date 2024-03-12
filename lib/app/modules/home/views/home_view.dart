import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              ElevatedButton(
                  onPressed: () {
                    controller.getCars();
                  },
                  child: Text('Get')),
              Obx(() => ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.cars.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    final car = controller.cars[index];
                    return Card(
                        color: Color.fromARGB(255, 239, 239, 234),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 200),
                        child: ListTile(
                          title: Text(car.car),
                          leading: Text(car.id.toString()),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text(car.price)],
                          ),
                          trailing: Icon(
                              car.availability == true
                                  ? Icons.check
                                  : Icons.close,
                              color: Color.fromARGB(255, 34, 50, 172)),
                        ));
                  })))
            ]),
          ),
        ));
  }
}
