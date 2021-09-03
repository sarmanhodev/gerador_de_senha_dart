import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';


class GeraSenha extends StatefulWidget {
  const GeraSenha({Key? key}) : super(key: key);

  @override
  _GeraSenhaState createState() => _GeraSenhaState();
}


class _GeraSenhaState extends State<GeraSenha> {
  bool _selectedMinun = false;
  bool _selectedMaiu = false;
  bool _selectedNum = false;
  bool _selectedEspecials = false;
  String _pass="";
  String senha="Gere a sua senha";



//FUNÇÃO PARA GERAR AS SENHAS
  void _geraSenha(){
    String _num="0123456789";
    String _maiusculos = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    String _minusculos = "abcdefghijklmnopqrstuvwxyz";
    String _especiais = "@?+-#|%&/*[](){}.,!";
    String _word = _pass;
    String senhaGeral = "";



    if(_selectedMinun ==false && _selectedEspecials ==false &&  _selectedMaiu ==false && _selectedNum == false){// VERIFICADOR CASO AS CAIXAS DE SELEÇÃO ESTEJAM VAZIAS
      _reset();
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Atenção!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              content: Text("Para gerar uma senha, é necessário que, pelo menos, uma opção esteja selecionada.",style: TextStyle( fontSize: 20),),
              actions: <Widget>[
                FlatButton(

                  child: Text("Voltar",style: TextStyle( color: Colors.redAccent),),
                  onPressed: () => Navigator.pop(context),
                )
              ],

            );
          }
      );
    }else if(_selectedMinun ==true && _selectedEspecials ==true &&  _selectedMaiu ==true && _selectedNum == true) {

      senhaGeral += _num;
      senhaGeral+= _maiusculos;
      senhaGeral += _minusculos;
      senhaGeral += _especiais;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==true &&  _selectedMaiu ==true && _selectedNum == true && _selectedEspecials ==false){
      senhaGeral += _num;
      senhaGeral+= _maiusculos;
      senhaGeral += _minusculos;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==true &&  _selectedMaiu ==true && _selectedNum == false && _selectedEspecials ==false){
      //senhaGeral += _num;
      senhaGeral+= _maiusculos;
      senhaGeral += _minusculos;
     // senhaGeral += _especiais;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==true &&  _selectedMaiu ==false && _selectedNum == false && _selectedEspecials ==false){
     // senhaGeral += _num;
     // senhaGeral+= _maiusculos;
      senhaGeral += _minusculos;
     // senhaGeral += _especiais;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==true &&  _selectedMaiu ==false && _selectedNum == false && _selectedEspecials ==true){
     // senhaGeral += _num;
      //senhaGeral+= _maiusculos;
      senhaGeral += _minusculos;
      senhaGeral += _especiais;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==true &&  _selectedMaiu ==false && _selectedNum == true && _selectedEspecials ==true){
      senhaGeral += _num;
     // senhaGeral+= _maiusculos;
      senhaGeral += _minusculos;
     senhaGeral += _especiais;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==true &&  _selectedMaiu ==false && _selectedNum == true && _selectedEspecials ==false){
      senhaGeral += _num;
     // senhaGeral+= _maiusculos;
      senhaGeral += _minusculos;
     // senhaGeral += _especiais;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==false &&  _selectedMaiu ==true && _selectedNum == false && _selectedEspecials ==false){
      //senhaGeral += _num;
      senhaGeral+= _maiusculos;
      //senhaGeral += _minusculos;
      //senhaGeral += _especiais;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==false &&  _selectedMaiu ==true && _selectedNum == true && _selectedEspecials ==false){
      senhaGeral += _num;
      senhaGeral+= _maiusculos;
     // senhaGeral += _minusculos;
     // senhaGeral += _especiais;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==false &&  _selectedMaiu ==true && _selectedNum == true && _selectedEspecials ==true){
      senhaGeral += _num;
      senhaGeral+= _maiusculos;
      //senhaGeral += _minusculos;
      senhaGeral += _especiais;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==false &&  _selectedMaiu ==true && _selectedNum == false && _selectedEspecials ==true){
     // senhaGeral += _num;
      senhaGeral+= _maiusculos;
     // senhaGeral += _minusculos;
      senhaGeral += _especiais;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==false &&  _selectedMaiu ==false && _selectedNum == true && _selectedEspecials ==false){
      senhaGeral += _num;
     /* senhaGeral+= _maiusculos;
      senhaGeral += _minusculos;
      senhaGeral += _especiais;*/
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==false &&  _selectedMaiu ==false && _selectedNum == true && _selectedEspecials ==true){
      senhaGeral += _num;
     // senhaGeral+= _maiusculos;
     // senhaGeral += _minusculos;
      senhaGeral += _especiais;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==false &&  _selectedMaiu ==false && _selectedNum == false && _selectedEspecials ==true){
     /* senhaGeral += _num;
      senhaGeral+= _maiusculos;
      senhaGeral += _minusculos;*/
      senhaGeral += _especiais;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }else if(_selectedMinun ==true &&  _selectedMaiu ==true && _selectedNum == false && _selectedEspecials ==true){
    // senhaGeral += _num;
      senhaGeral+= _maiusculos;
      senhaGeral += _minusculos;
      senhaGeral += _especiais;
      for(int i =0; i<8; i++){
        int rand = Random().nextInt(senhaGeral.length);
        _word+= senhaGeral[rand];

        setState(() {
          senha = _word;
        });
      }

    }
  }



  void _reset(){

    setState(() {
       _selectedMinun = false;
       _selectedMaiu = false;
       _selectedNum = false;
       _selectedEspecials = false;
     senha = "Gere a sua senha";
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        elevation: 40.0,
        brightness: Brightness.dark,


        actions:<Widget> [
       Padding(padding: EdgeInsets.only(right: 90,top: 20),
       child:  Text('Gerador de Senhas 1.0', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 20),),),
          Image.asset('image/password.png',width: 55,height: 20,),

        ],

      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(6),

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Column(
                children:<Widget> [
                Padding(  padding: EdgeInsets.only(top:30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    children: <Widget> [
                      Text("Personalize sua senha!\n", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      CheckboxListTile(
                        title: Text("Letras Minúsculas"),
                          subtitle: Text("Ex.: a,b,c..."),
                          value: _selectedMinun,
                          onChanged: (bool? selecionado){
                          setState(() {
                            _selectedMinun = selecionado!;
                          });
                          }),
                      CheckboxListTile(
                          title: Text("Letras Maiúsculas"),
                          subtitle: Text("Ex.:A,B,C..."),
                          value: _selectedMaiu,
                          onChanged: (bool? selecionado){
                            setState(() {
                              _selectedMaiu = selecionado!;
                            });
                          }),
                      CheckboxListTile(
                          title: Text("Números"),
                          subtitle: Text("Ex.: 0,1,2..."),
                          value: _selectedNum,
                          onChanged: (bool? selecionado){
                            setState(() {
                              _selectedNum = selecionado!;
                            });
                          }),
                      CheckboxListTile(
                          title: Text("Caracteres Especiais"),
                          subtitle: Text("Ex.: %,#,@..."),
                          value: _selectedEspecials,
                          onChanged: (bool? selecionado){
                            setState(() {
                              _selectedEspecials = selecionado!;
                            });
                          }),

                    ],
                  ),

                ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 30),
                child: Row(

                  mainAxisAlignment:MainAxisAlignment.center,
                  children:<Widget> [
                    SelectableText.rich(
                            TextSpan(text: " $senha \n\n ", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.black),),
                      textAlign: TextAlign.center,
                      toolbarOptions: ToolbarOptions(copy: true, selectAll: true,cut: true,),
                      showCursor: false,
                    ),

                  ],
                ),

              ),

          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children:<Widget> [
              Padding(padding: EdgeInsets.only(top: 40),
                child: RaisedButton(
                  child: Text("GERAR", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                  color:  Colors.green[800],
                  elevation: 50.0,
                  padding: EdgeInsets.all(15),
                  onPressed: (){
                    _geraSenha();
                  },),
              ),

              Padding(padding: EdgeInsets.only(top: 40, left: 50),
                child: RaisedButton(
                  child: Text("REINICIAR", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                  color:  Colors.green[800],
                  elevation: 50.0,
                  padding: EdgeInsets.all(15),
                  onPressed: (){
                    _reset();
                  },),
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
