# Project-postoABC
Projeto Fortes - Gerenciamento de Posto de Combustivel

# Informações importantes

* Script de criação do banco de dados esta na pasta **Database\Script_Criação_BD.sql**

* Dentro desta mesma pasta existe um banco de dados  **Database\RETAG_BASE.FDB**, porem esta BD foi criado na seguinte versão do **Firebird: 3.0.9.33560 (Win32)**

# O Sistema

A ideia é de um software para gerenciamento de um posto de combustivel.

O sistema possui as seguintes telas:

* Cadastro de Usuários - cadastro de usuários do sistema
* Cadastro de Bombas - cadastro de bomba de conbustivel para abastecimento
* Cadastro de Produtos - cadastro para os combustíveis para venda
* Relatorio de Vendas - relatorio de vendas por periodo
* Simulador de Vendas - É uma thread que popula a tabela *VENDAS*, simulando o abastecimento nas bombas do posto

