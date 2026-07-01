import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 139, 88, 221)),
        useMaterial3: true,
      ),
      home: const PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ETEC Mongaguá - PAM I'),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
      ),

      drawer: const Drawer(
        child: Center(child: Text('Texto do Drawer (Menu)')),
      ),

      endDrawer: const Drawer(
        child: Center(child: Text('Texto do EndDrawer (Configurações)'))
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.yellowAccent,
              child: CircleAvatar(
                radius: 56,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZffjFhMa3p7-OuuLWJ09oWWusOyP8LFQ1bA&s')
                
              ),
            ),
             const SizedBox(height: 15),

           
            const Text(
              'Gabriel Pasini Secundo',
              textAlign: TextAlign.center, // Centraliza o texto
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold), 
            ),
            const Text(
              '16 anos - Mongágua, SP',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey), 
            ),
            const SizedBox(height: 20),

          
            const Divider(),
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blueAccent,
              child: CircleAvatar(
                radius: 56,
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/1c/aa/77/1caa775450f57f652f09f9a355382011.jpg')
                
              ),
            ),
            
       
            
            
            const SizedBox(height: 15),

            
            const Text(
              'Diogo Calveche Salomão Santana',
              textAlign: TextAlign.center, // Centraliza o texto
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold), 
            ),
            const Text(
              '16 anos - Mongágua, SP',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey), 
            ),
            const SizedBox(height: 20),

            
            const Divider(), 
        
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Icon(Icons.email, color: Colors.deepPurpleAccent),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'doisalunodatalde@etec.sp.gov.br',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Icon(Icons.phone, color: Colors.deepPurpleAccent),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      '(13) 99999-9999',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Icon(Icons.web, color: Colors.deepPurpleAccent),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      '@diogosalomaoegabrielpasini',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(height: 20),

            
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Resumo Profissional',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.redAccent),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Alunos do 2º ano do curso de Programação de Aplicativos Multiplataforma (PAM I) da ETEC de Mongaguá, com experiência em desenvolvimento de aplicativos móveis utilizando Flutter e React Native, além de conhecimentos em backend com Laravel. Buscando oportunidades para aplicar habilidades técnicas e contribuir para projetos inovadores.',
              textAlign: TextAlign.justify, // Distribui o texto uniformemente nas laterais (justificado)
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 25),

            // 5. Objetivo: Segue o mesmo padrão visual do resumo para manter a consistência do design
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Objetivo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.redAccent),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Atuar como programadores e produtores de sites e aplicações no geral, focando visar a criatividade e inovação com mentes muito voltadas para o desenvolvimento de novas ideias, buscando sempre aprimorar nossas habilidades e conhecimentos na área de desenvolvimento de sistemas.',
              textAlign: TextAlign.justify,
              
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
    
          
  }
}