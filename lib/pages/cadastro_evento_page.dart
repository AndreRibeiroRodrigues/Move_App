import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CadastroEventoPage extends StatefulWidget {
  const CadastroEventoPage({Key? key}) : super(key: key);

  @override
  State<CadastroEventoPage> createState() => _CadastroEventoPageState();
}

class _CadastroEventoPageState extends State<CadastroEventoPage> {
  final formKey = GlobalKey<FormState>();
  var dataSel;
  String categoria = 'show';

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
          return SingleChildScrollView(
            child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    color: Colors.amber,
                                    width: 97,
                                    height: 35,
                                    child: Center(
                                      child: Text(dataSel ?? 'N/A'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      DateFormat formatter =
                                          DateFormat('dd/MM/yyyy');
                                      final dataSelecionada =
                                          await showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime.now(),
                                              lastDate: DateTime.now().add(
                                                  const Duration(days: 365)));
                                      setState(() {
                                        dataSel = formatter
                                            .format(dataSelecionada!)
                                            .toString();
                                      });
                                    },
                                    icon: const Icon(Icons.calendar_month),
                                  ),
                                ],
                              ),
                              TextFormField(
                                maxLines: 1,
                                decoration: InputDecoration(
                                  labelText: 'Valor',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                maxLines: 1,
                                decoration: InputDecoration(
                                  labelText: 'Tempo de duração',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        labelText: 'Nome da Atividade',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(color: Colors.cyan)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.green)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(color: Colors.cyan)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.green)),
                      ),
                      value: categoria,
                      items: const [
                        DropdownMenuItem(value: 'show', child: Text('Show')),
                        DropdownMenuItem(value: 'aula', child: Text('Aula')),
                        DropdownMenuItem(
                            value: 'restalrantes', child: Text('Restalrantes')),
                      ],
                      onChanged: (String? value) {
                        categoria = value!;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      maxLines: 1,
                      decoration: InputDecoration(
                        labelText: 'Endereço',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(color: Colors.cyan)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      maxLines: null,
                      decoration: InputDecoration(
                        labelText: 'Descrição',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(color: Colors.cyan)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.green),
                        ),
                      ),
                    )
                  ],
                )),
          );
        }),
      ),
      floatingActionButton: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.arrow_circle_left),
          label: const Text('Enviar')),
    );
  }
}
