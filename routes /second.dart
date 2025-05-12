import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrinho', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurple.shade100, Colors.white],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Itens no carrinho: ${context.watch<Cart>().count}',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Último item adicionado:',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.deepPurple.shade700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '${context.watch<Cart>().cart}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('addItem_floatingActionButton'),
        onPressed: () => context.read<Cart>().addItem('Novo Item ❤'),
        tooltip: 'Adicionar novo item!',
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
