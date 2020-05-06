import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController(); //base do controlador de texto

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField( //insere um campo de texto
              //tipos: text, number, emailAddress, datetime
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor" //Texto padrao, titulo para o usuario
              ),
              enabled: false, //ativar ou desativar caixa de texto
             // maxLength: 2, //max de caracteres permitidos
              maxLengthEnforced: false, //´permite ultrapassar mas avisa o erro
              style: TextStyle( //aplica um estilo no texto
                fontSize: 25,
                color: Colors.green,
              ),
              obscureText: false , //esconder o texto em campos de senha
              onChanged: (String valorDigitado){ //recupera o valor digitado
                print("Valor digitado: $valorDigitado");
              },
              onSubmitted: (String valorDigitado2){ //recupera o valor digitado se clica em ok
                print("Valor digitado2: $valorDigitado2");
              },
              controller: _textEditingController, //controlador necessário para recuperar informação da caixa de texto e usar no botao
            ),
          ),
          RaisedButton(
              child: Text("Salvar"),
              color: Colors.lightGreen,
              onPressed: (){
                print("Valor digitado3: "+ _textEditingController.text);
              },
              )
        ],
      ),
    );
  }
}
