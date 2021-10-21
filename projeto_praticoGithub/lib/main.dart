//Pedro Torres Bugalho

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo Prático Flutter',

      initialRoute: 't1',
      routes: {
        't1': (context) => TelaLogin(),
        't2': (context) => TelaMenu(),
        't3': (context) => TelaSobre(),
        't4': (context) => TelaLista(),
      },
    ),
  );
}

class LoginUsuario {
  final String nome;
  LoginUsuario(this.nome);
}

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  var nome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Login'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                        child: Image.asset('lib/imagens/logo.png'),
                        ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: nome,
                      decoration: InputDecoration(
                        labelText: 'Nome de Usuário',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          var obj = LoginUsuario(nome.text);
                          Navigator.pushNamed(context, 't2', arguments: obj);
                        });
                      },
                      child: Text('ENTRAR'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
//TELA DO MENU
//
class TelaMenu extends StatefulWidget {
  const TelaMenu({Key? key}) : super(key: key);

  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  @override
  Widget build(BuildContext context) {
    var obj;
    if (ModalRoute.of(context)!.settings.arguments != null) {
      obj = ModalRoute.of(context)!.settings.arguments as LoginUsuario;
    } else {
      obj = LoginUsuario(' ');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Usuário:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              obj.nome,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 150,
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 't3');
                },
                child: Text('Sobre'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 't4');
                },
                child: Text('Lista'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Colors.red,
              onPrimary: Colors.white,),
                onPressed: () {
                  Navigator.pop(context);
                }, 
                child: Text('SAIR'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//
// TELA SOBRE
//
class TelaSobre extends StatelessWidget {
  const TelaSobre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Tema:',
            style: TextStyle(fontSize: 24),
            ),
            Text('O aplicativo possui algumas funcionalidades básicas.',
            style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Objetivo:',
            style: TextStyle(fontSize: 24),
            ),
            Text('Utilizar ao máximo as funcionalidades aprendidas em Programação Dispositivos Móveis.',
            style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Desenvolvedor:',
            style: TextStyle(fontSize: 24),
            ),
            Text('Pedro Torres Bugalho.',
            style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 378,
              width: 302,
              child: Image.asset('lib/imagens/pedro.png'),
               ),
            SizedBox(
              height: 50,
            ),
            OutlinedButton(
              onPressed: () {
              Navigator.pop(context);
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}

//
// TELA LISTA
//
class TelaLista extends StatefulWidget {
  const TelaLista({ Key? key }) : super(key: key);

  @override
  _TelaListaState createState() => _TelaListaState();
}

class _TelaListaState extends State<TelaLista> {
  
var lista = [];

  var txtLista = TextEditingController();

  @override
  void initState() {
    lista.add("ListViewer");
    lista.add("Varios itens para demonstrar a rolagem ");
    lista.add("Pode-se adicionar ou remover intens ");
    lista.add("Item A");
    lista.add("Item B");
    lista.add("Item C");
    lista.add("Item D");
    lista.add("Item F");
    lista.add("Item G");
    lista.add("Item H");
    lista.add("Item I");
    lista.add("Item J");
    lista.add("Item K");
    lista.add("Item L");
    lista.add("Teste 1");
    lista.add("Teste 2");
    lista.add("Teste 3");
    lista.add("Teste 4");
    lista.add("Teste 5");
    lista.add("Teste 6");
    lista.add("Teste 7");
    lista.add("Teste 8");
    lista.add("Teste 9");
    lista.add("Teste 10");
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.grey.shade200,

        child: ListView.builder(

          scrollDirection: Axis.vertical,

          itemCount: lista.length,

          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              shadowColor: Colors.blue.shade200,
              child: ListTile(

                title: Text(
                  lista[index],
                  style: TextStyle(fontSize: 22),
                ),

                // REMOVER
                trailing: IconButton(
                  icon: Icon(Icons.delete_outline),
                  onPressed: () {
                    setState(() {
                      lista.removeAt(index);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Item removido'),
                        duration: Duration(seconds: 2),
                      ));
                    });
                  },
                ),

                //SELECIONAR
                hoverColor: Colors.blue.shade100,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Item selecionado: ${lista[index]}'),
                    duration: Duration(seconds: 2),
                  ));
                },
              ),
            );
          },
        ),
      ),

      // ADICIONAR
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        child: Icon(Icons.add),
        onPressed: () async {
          await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(
                    'ADICIONAR',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  content: TextField(
                    controller: txtLista,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  actions: [
                    TextButton(
                      child: Text('Adicionar'),
                      onPressed: () {
                        setState(() {
                          var msg = '';
                          if (txtLista.text.isNotEmpty) {
                            lista.add(txtLista.text);
                            txtLista.clear();
                            msg = 'Lista Atualizada!';
                          } else {
                            msg = 'Não pode ser vazio!';
                          }

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(msg),
                            duration: Duration(seconds: 1),
                          ));
                        });

                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 20,),

                    TextButton(
                      child: Text('Cancelar'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}