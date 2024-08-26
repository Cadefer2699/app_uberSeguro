
import 'package:flutter/material.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.blueAccent, 
          padding: EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // HORIZONTAL
            mainAxisAlignment: MainAxisAlignment.center, //VERTICAL
            children: [
              _textLoginRotated(), 
              SizedBox(height: 50),  
              _textRegisterRotated(context), 
              SizedBox(height: 80),
            ],
          ),
        ), 
        Container(
          margin: EdgeInsets.only(left: 60, bottom: 60), 
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 31, 105, 165),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)), 
          ),
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,), 
                textoBienvenida('Welcome'), 
                textoBienvenida('Back'),  
                imageLogo(), 
                textoBienvenida('Login in'),  
                SizedBox(height: 50), 
                textFieldEmail(), 
                SizedBox(height: 25), 
                textFieldPassword(), 
                //Container PASSWORD....
                Spacer(),
                btnIniciarSesion(context), 
                textAccountUsuario(context), 
                SizedBox(height: 50,), 
              ],
            ),
          ),
        ),
    ],
      
    ); 
  }

  Widget _textRegisterRotated(BuildContext context){
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'register'); 
      },
      child: RotatedBox(
                  quarterTurns: 1, 
                  child: Text(
                    'Registro', 
                    style: TextStyle(
                      fontSize: 20, 
                      color: Colors.white, 
                    ),
                    ),
      ),
    ); 
  }

  Widget _textLoginRotated(){
    return RotatedBox(
                quarterTurns: 1, 
                child: Text(
                  'Login', 
                  style: TextStyle(
                    fontSize: 25,  
                    fontWeight: FontWeight.bold, 
                    color: Colors.white, 
                  ), 
                ),
              ); 
  }

  Widget imageLogo(){
    return Container(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/img/car.png', 
                    width: 150,
                    height: 150,
                    ),
    ); 
  }

  Widget textoBienvenida(String text){
    return Text(
                  text, 
                  style: TextStyle(
                    fontSize: 30, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white, 
                  )
    );
  }

  Widget textAccountUsuario(BuildContext context){
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'No tienes cuenta?', 
                      style: TextStyle(
                        color: Colors.grey[300], 
                      ),
                    ), 
                    SizedBox(width: 10,), 
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'register'); 
                      },
                      child: Text(
                        'Registrate', 
                        style: TextStyle(
                          color: Colors.white, 
                          fontWeight: FontWeight.bold, 
                        ),
                      ),
                    ), 
                  ],
    ); 
  }

  Widget btnIniciarSesion(BuildContext context){
    return Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 50, left: 5, right: 5), 
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, 
                    ),
                    child: Text(
                      'Iniciar Sesion', 
                      style: TextStyle(
                        color: Colors.blue, 
                        fontSize: 20, 
                        fontWeight: FontWeight.bold, 
                      ),
                      )
                  ),
    ); 
  }

  Widget textFieldEmail(){
    return Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15), 
                      bottomRight: Radius.circular(15), 
                    )
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('email'),
                      border: InputBorder.none,   
                      prefixIcon: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.email), 
                            Container(
                              height: 30,
                              width: 1,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
    ); 
                
  }

  Widget textFieldPassword(){
    return Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15), 
                      bottomRight: Radius.circular(15), 
                    )
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('password'), 
                      border: InputBorder.none,
                      prefixIcon: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.password),
                            Container(
                              height: 30,
                              width: 1,
                              color: Colors.grey,
                            ), 
                          ],
                        ),
                      ),
                    ),
                  ),
      );  
                
  }

}