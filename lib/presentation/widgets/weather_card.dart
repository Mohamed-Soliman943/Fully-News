
import 'package:flutter/material.dart';
import 'package:news/data/models/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final WeatherModel weatherModel;
  const WeatherCard({
    super.key, required this.weatherModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3), // Shadow color
              spreadRadius: 2, // How much the shadow spreads
              blurRadius: 10, // Softness of the shadow
              offset: const Offset(0, 5), // Position of shadow (x, y)
            ),
          ],
        ),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("AVERAGE TEMPRATURE:",style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(weatherModel.avgtemp_c+'°C',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black54,
                    ),),
                  Image.network('http:'+weatherModel.icon,),
                ],
              ),
              Column(
                children: [
                  Text(weatherModel.date,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.grey
                    ),),
                  Text(weatherModel.text,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.grey
                    ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text('MIN',
                            style: TextStyle(
                              fontSize: 22,
                              color: Color.fromRGBO(0, 57, 116, 1),
                            ),),
                          Text(weatherModel.mintemp_c,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.teal,
                            ),),

                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text('MAX',
                            style: TextStyle(
                              fontSize: 22,
                              color: Color.fromRGBO(0, 57, 116, 1),
                            ),),
                          Text(weatherModel.maxtemp_c,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.teal
                            ),),

                        ],
                      ),
                    ],
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
