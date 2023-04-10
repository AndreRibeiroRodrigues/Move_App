import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CadastroEventoPage extends StatelessWidget {
  const CadastroEventoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var date;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Evento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 240,
                    width: 163,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.camera_alt_outlined,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.amber,
                                width: 97,
                                height: 35,
                                child: Text(),
                              ),
                            ),
                            IconButton(
                              onPressed: () async {
                                
                                final dataSelecionada = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.now()
                                        .add(const Duration(days: 365)));
                                        
                              },
                              icon: Icon(Icons.calendar_month),
                            ),
                          ],
                        ),
                        TextFormField(
                          maxLines: 1,
                          decoration: InputDecoration(labelText: 'Valor'),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}
