import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

 double _tamanhoSlider = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
            children: <Widget>[

              Slider(
            value: _tamanhoSlider,
            min: 0,
            max: 10,
            label: _tamanhoSlider.toString(),
            divisions: 5,
            activeColor: Colors.amber,
            inactiveColor: Colors.grey[200],
            onChanged: (double valor){
              setState(() {
                _tamanhoSlider = valor;
              });
            }
        ),

              RaisedButton(
                  child: Text(
                    "Salvar",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  onPressed: (){
                    print("Resultado: " + _tamanhoSlider.toString());
                  }
              )



            ]

        ),
      ),
    );
  }
}
