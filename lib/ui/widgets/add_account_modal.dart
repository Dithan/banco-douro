import 'package:banco_douro/ui/styles/colors.dart';
import 'package:flutter/material.dart';

class AddAccountModal extends StatefulWidget {
  const AddAccountModal({super.key});

  @override
  State<AddAccountModal> createState() => _AddAccountModalState();
}

class _AddAccountModalState extends State<AddAccountModal> {
  String _accountType = "AMBROSIA";

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.70,
        color: AppColor.lightOrange,
        // Coluna 1
        child: Padding(
          padding: EdgeInsets.only(
            top: 16,
            left: 32,
            right: 32,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Detalhe
                SizedBox(
                  height: 4,
                ),
                Center(
                  child: Container(
                    width: 32,
                    height: 4,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5B5B5B),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                Center(
                    child: Image.asset("assets/images/icon_add_account.png")),
                SizedBox(height: 16),
                // Textos
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Adicionar nova conta",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text("Preencha os dados abaixo:")
                  ],
                ),
                // Form
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: "Nome"),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Último nome"),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Tipo da conta"),
                        DropdownButton<String>(
                            isExpanded: true,
                            value: _accountType,
                            items: [
                              DropdownMenuItem(
                                value: "AMBROSIA",
                                child: Text("Ambrosia"),
                              ),
                              DropdownMenuItem(
                                value: "CANJICA",
                                child: Text("Canjica"),
                              ),
                              DropdownMenuItem(
                                value: "PUDIM",
                                child: Text("Pudim"),
                              ),
                              DropdownMenuItem(
                                value: "BRIGADEIRO",
                                child: Text("Brigadeiro"),
                              ),
                            ],
                            onChanged: (valor) {
                              if (valor != null) {
                                setState(() {
                                  _accountType = valor;
                                });
                              }
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(AppColor.lightGrey)),
                            child: Text(
                              "Cancelar",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(AppColor.orange)),
                              child: Text(
                                "Adicionar",
                                style: TextStyle(color: Colors.black),
                              )),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
