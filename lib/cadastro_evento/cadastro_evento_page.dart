import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CadastroEventoPage extends StatefulWidget {
  const CadastroEventoPage({Key? key}) : super(key: key);

  @override
  State<CadastroEventoPage> createState() => _CadastroEventoPageState();
}

class _CadastroEventoPageState extends State<CadastroEventoPage> {
  var dataSel;
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
                            Container(
                              color: Colors.amber,
                              width: 97,
                              height: 35,
                              child: Center(
                                child: Text(dataSel ?? 'N/A'),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              onPressed: () async {
                                DateFormat formatter = DateFormat('dd/MM/yyyy');
                                final dataSelecionada = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.now()
                                        .add(const Duration(days: 365)));
                                setState(() {
                                  dataSel = formatter
                                      .format(dataSelecionada!)
                                      .toString();
                                });
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
