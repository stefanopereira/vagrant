Vagrant
=================

Instalação
------------

1. Instalação [VirtualBox](http://www.virtualbox.org/)

2. Instalação [Vagrant](http://www.vagrantup.com/)

3. Baixe os arquivos e descompacte estes arquivos

4. Rode os comandos na pasta 
```
vagrant up --provision
```

Será baixado o Box Vagrante e configurar o ambiente LAMP

Alguns Comandos
---------------

1. acesso SSH na box:

```
vagrant ssh
```
2.Updating box para ultima versão
```
vagrant box update
```

Configurando Vagrant SSH
------------------------

1. Instale o Git
2. Coloque o bin do Git no Variável do ambiente do usuario.
3. Teste o comando na pasta do vagrant 

```
vagrant ssh
```

Acesso compartilhado na box
-------------------------
...
localhost:8080
...
```
suaPasta/www/html/
```

Plugins requeridos Vagrant
--------------------------
```
vagrant plugin install vagrant-vbguest
```

:)
