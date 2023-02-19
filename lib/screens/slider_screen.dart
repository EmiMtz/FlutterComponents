import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _slideEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders && Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
           children: [
            Slider.adaptive( //el adaptive es para que se adapte lo mas similar al SO
              min: 50,
              max: 400,
              // divisions: 10, //Para poner separadores
              activeColor: AppTheme.primary,
              value: _sliderValue, 
              onChanged: _slideEnable
              ? (value) {
                _sliderValue = value; // moverlo visualmente 
                setState(() {});
              }
              : null
            ),

            Checkbox(
              value: _slideEnable, 
              onChanged: (value) {
                _slideEnable = value ?? true;
                setState(() {});
              }
            ),

            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text("Habilitar Slider"),
              value: _slideEnable, onChanged: (value) => setState(() { _slideEnable = value ?? true; })
            ),

            Switch(
              value: _slideEnable  , onChanged: (value) => setState(() { _slideEnable = value; })
            ),

            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text("Habilitar Slider"),
              value: _slideEnable, onChanged: (value) => setState(() { _slideEnable = value; })
            ),

            const AboutListTile(),
      
            // Expanded(
              SingleChildScrollView(
                child: Image(
                  image: const NetworkImage("https://www.nicepng.com/png/detail/3-36120_flash-full-body-flash-drawing.png"),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            // ),
            // const SizedBox(height: 50,)
           ],
        ),
      ),
    );
  }
}