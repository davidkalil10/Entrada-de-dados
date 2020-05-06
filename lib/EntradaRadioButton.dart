import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  int _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            RadioListTile(
              title: Text("Masculino"),
                value: 1,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() { //necessário para marcar o radio
                    _escolhaUsuario = escolha; //seta na variavel o que foi selecionado
                  });

                }
            ),

            RadioListTile(
                title: Text("Feminino"),
                value: 2,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() { //necessário para marcar o radio
                    _escolhaUsuario = escolha; //seta na variavel o que foi selecionado
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
                  print("Resultado: " + _escolhaUsuario.toString());
                }
            )




            /*
            Text("Masculino"),
            Radio(
                value: "M", //valor que é setado ao marcar o radio
                groupValue: _escolhaUsuario, //grupo onde serão armazenados as escolhas dos radios
                onChanged: (String escolha){
                  setState(() { //necessário para marcar o radio
                    _escolhaUsuario = escolha; //seta na variavel o que foi selecionado
                  });
                  print("resultado: "+ escolha);
                }
            ),

            Text("Feminino"),
            Radio(
                value: "F",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("resultado: "+ escolha);
                }
            ),
            */



          ],
        ),
      ),
    );
  }
}
