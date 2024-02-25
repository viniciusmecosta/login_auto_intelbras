# Login Automatizado no Sistema Intelbras

Este script em AutoIt facilita o processo de login no sistema Intelbras, automatizando a entrada e permitindo um acesso mais rápido e eficiente à visualização e gestão das câmeras de segurança. Ele é projetado para automatizar não só o login, mas também a maximização da janela do navegador, a seleção de câmeras específicas e a ativação do modo HD com o mínimo esforço manual necessário.

## Funcionalidades

- **Login Automático:** Realiza o login utilizando credenciais configuradas pelo usuário.
- **Maximização da Janela:** Após o login, a janela do navegador é maximizada automaticamente.
- **Seleção e Ativação Automática de Câmeras:** Seleciona automaticamente as câmeras definidas pelo usuário e ativa o modo HD.

## Como Usar

Siga os passos abaixo para configurar e usar este script:

1. Instale o AutoIt no seu computador.
2. Clone ou faça o download deste repositório para um local de sua escolha.
3. Abra o arquivo `script.au3` com um editor de texto ou com o editor do AutoIt.
4. Insira suas credenciais de acesso ao sistema nos lugares dos valores `"username"` e `"password"` dentro da função de login.
5. Coloque o endereço IP do seu sistema de câmeras Intelbras.
6. Salve as alterações e execute o script através do AutoIt para iniciar o processo de login automatizado.

## Pré-requisitos

- **AutoIt:** Essencial para a execução do script.
- **Biblioteca `IE.au3`:** Necessária para a automação de interações com o navegador Internet Explorer.
