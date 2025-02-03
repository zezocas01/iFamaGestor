**iFamaGestor**
**Documentação Técnica**

---

### **Introdução**

Este documento descreve a implementação da aplicação web, incluindo as tecnologias utilizadas, os requisitos para instalação e configuração, bem como informações sobre a base de dados.

### **Tecnologias Utilizadas**

- **Linguagem de Servidor:** PHP
- **Linguagem de Marcação:** HTML
- **Estilização:** CSS e Bootstrap
- **Linguagem de Programação Cliente:** JavaScript
- **Base de Dados:** MySQL
- **Servidor Local:** XAMPP

### **Requisitos de Instalação**

#### **3.1. Software Necessário**

- **XAMPP:** Para alojar o servidor local e a base de dados
- **Navegador Web:** Google Chrome, Firefox ou Edge
- **Editor de Código:** VS Code, Sublime Text ou outro à escolha

#### **3.2. Configuração**

1. Instale o XAMPP e inicie os serviços Apache e MySQL.
2. Copie os ficheiros do projeto para a pasta **htdocs** do XAMPP.
3. Aceda a `http://localhost/Pap` através do navegador.
4. Importe a base de dados (`ifamagestor.sql`) através do phpMyAdmin.

---

### **Manual do Utilizador**

#### **Introdução**

Este documento fornece instruções sobre como utilizar a aplicação, incluindo acesso, funcionalidades e resolução de problemas.

### **Acesso ao Sistema**

1. Abra um navegador e aceda a ` http://localhost/Pap`.
2. Inicie sessão com o utilizador **admin** e a palavra-passe **123**.

### **Funcionalidades Principais**

#### **3.1. Registo de Compras , Reparações, Vendas e Clientes**

- Adicione informações sobre as reparações e compras realizadas na loja.
- Inclua dados como **nome do cliente, número de telefone, tipo de reparação e data de receção**.

#### **3.2. Consulta de Histórico**

- Permite visualizar os registos de reparações e compras de dispositivos.

### **Resolução de Problemas**

- **Erro de ligação à base de dados:** Verifique se o MySQL está ativo no XAMPP.
- **Erro no início de sessão:** Confirme se os dados de acesso estão corretos (utilizador: **admin**, palavra-passe: **123**).
- **Dados não aparecem na consulta:** Verifique se a base de dados foi importada corretamente.

---

Este documento garante uma orientação clara sobre a configuração e utilização da aplicação para gestão de aquisições e reparações de dispositivos na iFama.
