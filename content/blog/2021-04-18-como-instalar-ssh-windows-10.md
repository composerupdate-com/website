---
title: Como instalar OpenSSH Client e OpenSSH Server no Windows 10
slug: como-instalar-open-ssh-windows-10
tags: openssh, windows10
category: Windows
excerpt: O Windows 10 inclui software SSH integrado e neste artigo veremos como habilitar o servidor SSH.
created: 2019-04-18
image: ./images/pexels-nothing-ahead-4567339.jpg
image_caption: Como instalar OpenSSH Client e OpenSSH Server no Windows 10
author: luizeof
---

Como você já deve saber, o Windows 10 inclui software SSH integrado - um cliente e um servidor.

Neste artigo veremos como habilitar o servidor SSH para você se conectar em qualquer servidor linux usando usuário / senha ou até mesmo uma chave pública.

## Um pouco sobre o OpenSSH no Windows 10

O aplicativo **OpenSSH Server** permitirá que você estabeleça uma conexão com seu computador usando o protocolo **SSH**. Ele não permitirá que você acesse outros computadores em sua rede. Para se conectar a outros computadores, você deve instalar o **OpenSSH Client**.

Com o Windows 10, a Microsoft finalmente ouviu seus usuários após anos solicitando um cliente e servidor SSH.

## Como habilitar a ferramenta de SSH no Windows

A ferramenta do OpenSSL foi disponibilizada oficialmente no Windows 10 e sendo assim, pode ser considerado um recurso nativo e estável.

Para instalar o OpenSSH no **Windows 10**:

1. Abra as configurações do Windows;
2. Acesse Aplicativos;
3. Depois procure por "Aplicativos e Recursos";
4. Clique em “Gerenciar Recursos Opcionais”;
5. Uma lista será carregada, se o OpenSSH não estiver instalado, clique em "Adicionar um recurso";
6. Localize "Cliente OpenSSH", caso procure deseje instalar o cliente ou "Servidor OpenSSH", para o servidor;
7. Clique em Instalar.

## Instalando o OpenSSH no Windows 10 com PowerShell

Inicie o ***Terminal do PowerShell como Administrador*** e execute cada um dos comandos abaixo:

Para verificar o Status do OpenSSH:

```bash
Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
```

Para instalar o **OpenSSH Client no Windows 10**:

```bash
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
```

Para instalar o **OpenSSH Server no Windows 10**:

```bash
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
```



## Localizando o OpenSSH no Windows 10

Seus arquivos binários estão localizados na pasta **c:\windows\system32\Openssh**.

Além dos aplicativos cliente SSH, a pasta contém as seguintes ferramentas de servidor:

- sftp-server.exe
- ssh-agent.exe
- ssh-keygen.exe
- sshd.exe

É importante observar que o servidor SSH está configurado para funcionar como um serviço, porém você pode iniciar o servço OpenSSH no Windows 10 usando o PowerShell usando os comandos abauixo:

```bash
Start-Service sshd
Set-Service -Name sshd -StartupType 'Automatic'
Get-NetFirewallRule -Name *ssh*
New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
```

## Criando uma Chave SSH Pública no Windows 10

Inicie o Prompt de Comandos ou o PowerShell e digite o comando abaixo para iniciar o assistente do SSH:

```bash
ssh-keygen
```

Basta apertar **ENTER** nas confirmações e no final sua chave ficará em:

```bash
c:/Users/SeuUsuário/.ssh/id_rsa.pub
```

Seu computador está pronto para funcionar com o OpenSSH.

Até mais.
