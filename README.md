# Script de Teste Conectividade Interno

Esse script tem como função realizar teste conectividade de ping usando protocolo ICMP com coleta de dados estatísticos e backup de forma remota.

## Iniciando

O Script para ser executado deve está em ambiente Linux. (Plataforma de Hospedagem)

### Pré Requisitos

Requisitos Necessários para execução do Script:
```
Terminal – Console de Comando.
Acesso SSH – Para acesso remoto na Plataforma Online 7/24.
Acesso FTP – Para realizar downloads.
Internet - Para Acesso Remoto.
```

Sistema Operacional:
```
ParrotOS - 64Bits
Ubuntu 16x - 64Bits
```

### Instalação

Não há necessidade de instalação por ser um script que roda localmente.

## Rodando Teste

Todos os teste foram feito em Plataforma de Produção ate chegar ao resultado esperado.

### Teste para certificação de código e suas funções

Teste de ping nos host:
```
Realizar Ping - Teste Ok
```
Gerar Arquivos separado de Coletar das Métricas do ICMP:
```
Gerar logxxxx.txt - Teste Ok
```
Gerar uma pasta com nomenclatura conforme a data de execução:
```
Organização dos Arquivos de Log - Teste OK
```

## Versão

Versão: 1.0.1 - Produção
* Operando Diariamente
* Nenhum BUG encontrado

## Autores

* **SuporteTI** - *Trabalho Inicial* - [Alan Spinola](https://www.alanspinola.store)

## Licença 

Open Source

## Agradecimento

Aos meus professores e amigos que sempre pudemos compartilhar o conhecimento.