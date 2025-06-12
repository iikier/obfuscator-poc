# Prova de Conceito: Ofuscação de Código Front-End com javascript-obfuscator

Este repositório contém uma prova de conceito (PoC) simples para demonstrar o uso de uma ferramenta de ofuscação de código JavaScript em um projeto front-end.

A ferramenta escolhida foi o [javascript-obfuscator](https://github.com/javascript-obfuscator/javascript-obfuscator), uma solução gratuita e de código aberto que pode ser facilmente integrada a um fluxo de trabalho de desenvolvimento web.

## Objetivos

-   Pesquisar e selecionar uma ferramenta de ofuscação gratuita.
-   Configurar um ambiente de projeto mínimo.
-   Ofuscar um arquivo JavaScript de exemplo.
-   Demonstrar que o código ofuscado funciona como o original em uma página web.

## Estrutura do Projeto

```
/
├── dist/
│   └── app.obfuscated.js  // Arquivo JavaScript ofuscado
├── src/
│   └── app.js             // Código JavaScript original
├── index.html             // Página HTML para testar os scripts
├── package.json           // Dependências e scripts do projeto
└── README.md              // Este arquivo
```

## Passo a Passo para Reproduzir

### 1. Pré-requisitos

Certifique-se de ter o [Node.js](https://nodejs.org/) e o [npm](https://www.npmjs.com/) instalados em sua máquina.

### 2. Instalação

Clone o repositório e instale as dependências de desenvolvimento (neste caso, o `javascript-obfuscator`):

```bash
npm install
```

### 3. Código Original

O código-fonte original está localizado em `src/app.js`. É um script simples com uma função e uma classe para fins de demonstração.

### 4. Ofuscando o Código

Para executar o processo de ofuscação, utilize o script definido no `package.json`:

```bash
npm run obfuscate
```

Este comando irá:
1.  Ler o arquivo `src/app.js`.
2.  Aplicar as regras de ofuscação padrão.
3.  Salvar o resultado em `dist/app.obfuscated.js`.

### 5. Verificando o Resultado

Abra o arquivo `index.html` em seu navegador de preferência.

A página está configurada para carregar o script ofuscado de `dist/app.obfuscated.js`. Você pode verificar o console do desenvolvedor do navegador para ver que o script executa normalmente, exibindo as mesmas mensagens que o script original.

Para comparar, você pode editar o `index.html` e trocar o script para a versão não ofuscada (`src/app.js`) e verá que o resultado funcional é o mesmo. 