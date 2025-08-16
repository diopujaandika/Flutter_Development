import 'package:flutter/material.dart';
import 'package:fundamental_flutter/3_Scaffold.dart';

class ButtonElevated extends StatelessWidget{
  const ButtonElevated ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      child: const Text(
        'Submit',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: (){
        print('Button Click!');
      },
    );
  }
}

class ButtonTextButton extends StatelessWidget{
  const ButtonTextButton ({Key? key}) :super (key:key);

  @override
  Widget build(BuildContext context){
    return TextButton(
      onPressed: (){
        print('Button Click!');
      },
      child: Text(
        'Text Button',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ButtonOutlined extends StatelessWidget{
  const ButtonOutlined ({Key? key}) :super (key:key);

  @override
  Widget build(BuildContext context){
    return OutlinedButton(
        onPressed: (){
          print('Button Click!');
        },
        child: Text(
          'Text Button',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
    );
  }
}

class ButtonIcon extends StatelessWidget{
  const ButtonIcon ({Key? key}) :super (key:key);

  @override
  Widget build(BuildContext context){
    return IconButton(
      icon: const Icon(Icons.volume_up),
      tooltip: 'Increases volume by 10',
      onPressed: (){
        print('Button Click!');
      },
    );
  }
}

class ButtonDropdown extends StatefulWidget{
  const ButtonDropdown ({Key? key}) : super (key: key);

  @override
  State<ButtonDropdown> createState() => _ButtonDropdown();
}

class _ButtonDropdown extends State<ButtonDropdown>{
  String? language;

  @override
  Widget build(BuildContext context){
    return DropdownButton<String>(
      items: const <DropdownMenuItem<String>>[
        DropdownMenuItem<String>(
          value: 'Dart Language',
          child: Text('Dart'),
        ),
        DropdownMenuItem<String>(
          value: 'Kotlin Language',
          child: Text('Kotlin'),
        ),
        DropdownMenuItem<String>(
          value: 'Swift Language',
          child: Text('Swift'),
        ),
      ],
      value: language,
      hint: const Text('Select Language'),
      onChanged: (String? value){
        setState(() {
          language = value;
        });
      },
    );
  }
}