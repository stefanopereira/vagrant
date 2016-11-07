Vagrant
=================

Instalação
------------

1. Instalação [VirtualBox](http://www.virtualbox.org/)

2. Instalação [Vagrant](http://www.vagrantup.com/)

3. Instalação [GIT](https://git-scm.com/downloads/)

4. Baixe os arquivos e descompacte estes arquivos

5. Rode os comandos na pasta 
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

2. Updating box para ultima versão
```
vagrant box update
```

3. Faz o boot na máquina virtual e executa os provisioners definidos
```
vagrant up
```

4. Reinicia a máquina virtual.
```
vagrant reload
```

5. Roda apenas os provisioners, sem reiniciar a máquina.
```
vagrant provision  
```

6. Destrói a máquina virtual. 
```
vagrant destroy
```

7. "Desliga" a máquina, equivalente a um shutdown
```
vagrant halt
```

7.  suspende a execução da máquina virtual salvando seu estado
```
vagrant suspend  
```

7. Retoma uma máquina virtual previamente suspensa
```
vagrant resume  
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
```
localhost:8080
```

```
suaPasta/www/html/
```

Plugins requeridos Vagrant
--------------------------
```
vagrant plugin install vagrant-vbguest
```

Dependecies DBLIB
--------------------------
1. sudo apt-get install php5-sybase freetds-common libsybdb5
2. sudo apache2ctl restart

Configurando URL amigavel
--------------------------
1. Editar o arquivo
```
nano /etc/apache2/sites-available/000-default.conf
```

2- Acrescentar o codigo abaixo:
````
ServerAdmin webmaster@localhost
DocumentRoot /var/www/html
<Directory "/var/www/html">
        AllowOverride All
</Directory>
````





:)
