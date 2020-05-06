import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {

  bool _comidaBrasileira = false; //variavel para alterar o checkbox
  bool _estaSelecionado = false; //variavel para alterar o checkbox
  bool _comidaMexicana = false; //variavel para alterar o checkbox


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            CheckboxListTile( //check box em linha, toda a linha é configuravel
              title: Text("Comida brasileira"), //titulo
                subtitle: Text("Vai coxinhaa"), //subtitulo
                //activeColor: Colors.red, //cor do checkbox
                //selected: true, //cor dos titulos
                //secondary: Icon(Icons.add_box), //icone a esqueda da fileira
                value: _comidaBrasileira, //seta o valor do check box com a variavel
                onChanged: (bool valor){ //metodo onchaged altera o check box e requisita um boolean de variavel
                setState(() {
                  _comidaBrasileira = valor;
                });
                }
                ),
            CheckboxListTile( //check box em linha, toda a linha é configuravel
                title: Text("Comida mexicana"), //titulo
                subtitle: Text("Sai tacos"), //subtitulo
                //activeColor: Colors.red, //cor do checkbox
                //selected: true, //cor dos titulos
                //secondary: Icon(Icons.add_box), //icone a esqueda da fileira
                value: _comidaMexicana,
                onChanged: (bool valor){
                  setState(() {
                    _comidaMexicana = valor;
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
                print(
                  "Comida Brasileira: " + _comidaBrasileira.toString() + " Comida mexicana: " + _comidaMexicana.toString()
                );
                }
            )


            /*
            Text("Comida brasileira"),
            Checkbox(
              value: _estaSelecionado,
              onChanged: (bool valor){
                print("Checkbox: " + valor.toString());
               setState(() { //método para alterar o estado do checkbox
                 _estaSelecionado = valor;
               });
              },
            )
            */


          ],
        ),
      ),
    );
  }
}
