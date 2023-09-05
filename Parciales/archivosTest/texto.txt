Sobre su máquina virtual o real que instalo desarrolle lo siguiente,
1- En su home ( Perfil de Usuario ) crear un directorio llamado prácticas.
	cd home
	mkdir practicas
2- Dentro de prácticas crear un directorio tp1
	cd practicas
	mkdir tp1
		o
	mkdir practicas/tp1
3- Dentro de tp1 crear el archivo perfil.txt
	touch perfil.txt
4- Usando comandos del Shell, crear un usuario nombre “admi”, para luego darle accesos privilegiados.
	useradd admi
	// pendiente a terminar
5- En tp1 realizar una copia de los archivos /etc/passwd y /etc/group y guardarlos como usuarios y
grupos
	cp /etc/passwd usuarios
	cp /etc/group grupos
6- En el archivo usuarios creado en el punto anterior, identificar el uid ( Identificador de usuario), gid
(Ientificador de grupo), y shell (Interpetre de comandos) y guardarlos en el archivo perfil.txt creado en
el punto 3
	cat usuarios | awk -F ':' '{print $1":"$3":"$7}' >> perfil.txt
7- Cambiar la fecha de acceso de perfil.txt a 2018-03-06
	touch -a -t 201803060000 perfil.txt
8- Muestra las primeras 2 líneas del archivo usuarios
	head -2 perfil.txt
9- Muestre las últimas 4 líneas del archivo grupos.
	tail -4 perfil.txt
10- Mostrar el contenido del archivo /etc/fstab y redireccionar su contenido al archivo filesystem.txt
	cat /etc/fstab
	cat /etc/fstab >> filesystem.txt
11- Indicar cantidad de líneas, caracteres y palabras que contiene el archivo filesystems.txt, redireccionar
las salidas al archivo cantidad
	// el < es para que no me devuelva el nombre del archivo
	wc -l -m -w < filesystem.txt >> cantidad
12- Redireccionar history a $HOME/practicas/tp1/cmd.txt
	history >> cmd.txt
13- Renombrar el archivo cmd.txt como hist.txt
	rm cmd.txt hist.txt
14- Usando el comando grep buscar en el archivo usuarios el registro correspondiente al usuario creado
anteriormente y mandar al archivo newusuario.
	grep -a 'admi' usuarios >> newusuario
15- Copiar el directorio tp1 como tp1-temp
	cp -a tp1 tp1-temp
16- Copiar el documento desarrollado en la PARTE A dentro de la carpeta practicas/tp1, con el nombre
Practica1ParteA.txt
17- Comprimir y empaquetar el directorio tp1 y dejar dicho archivo en el directorio practicas
	tar -cgv -f tp1.gz tp1
18- Borrar el directorio tp1-temp
	rm -rf tp1-temp