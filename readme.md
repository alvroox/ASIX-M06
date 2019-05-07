---


---

<p>OBJECTIU: FER SERVIR SCRIPT BASH PER APROVISIONAR UNA VM INSTANCIADA AMB VAGRANT.</p>
<p>En aquesta pràctica faràs servir Vagrant per automatitzar la creació d’una màquina virtual en VirtualBox amb la darrera versió d’Ubuntu Server, amb 2GB de memòria. L’hauràs de provisionar amb un script per tal que aquesta MV contingui una pila LAMP. Per controlar la base de dades també es demana que quedi instal·lada l’aplicació adminer  <a href="https://github.com/vrana/adminer">https://github.com/vrana/adminer</a></p>
<p>HAURÀS DE LLIURAR:</p>
<ul>
<li>
<p>Document tècnic amb la descripció dels passos que has dut a terme per a la implementació de la VM i l’aprovisionament. Especialment cada comanda Vagrant que s’ha fet servir i per què.</p>
</li>
<li>
<p>L’adreça del repositori GitHub on puges el Vagrantfile i on ha de constar el document tècnic en format Markdown. Pots fer servir un editor online.</p>
</li>
<li>
<p>L’aprovisionament es fa mitjançant un script de bash i s’ha d’indicar amb comentaris què es fa en cada comanda.</p>
</li>
<li>
<p>Check un cop s’ha fet la tramesa en què es</p>
</li>
<li>
<p>mostra el repositori</p>
</li>
<li>
<p>generació de les VM mitjançant Vagrantfile.</p>
</li>
<li>
<p>Connexió a la applicació adminer i gestió d’una BBDD</p>
</li>
</ul>
<p>Con vagrant --version comprobamos la versión y si tenemos instalado vagrant</p>
<p><img src="https://lh5.googleusercontent.com/aHXN3iYXEqhgBCtwKSYqKDoyJUpRAoAoNamoz4_vl7J2SGvPKm0ovUjkJ0V0JYBIn6EDhESM9F9hfcspxnkeLAyRKFrXrLaqct8T_dr-r5m6469c-r6LOOSxDY-7L4r3VdsXNR8M" alt=""></p>
<p>Con vagrant init creamos el primer fichero de configuración, al utilizar un sistema específico utilizamos el comando vagrant box add ubuntu/trusty64 para descargar el sistema operativo<img src="https://lh4.googleusercontent.com/8ezjBvlx51Oeqnq4NN6jDQ6w5vzvGFRdbsWSbVwMQ2nh4ipQ150qWty4B8DLgaOEJ1snmqffnkx5dkWyjeU5S92Lwxg-mw6i0MjiZ-JXSHla7mwtwLTObE9CCD5idk0dE0ScVayI" alt=""></p>
<p>En el fichero de configuración Vagrantfile, la línea vb.memory la descomentamos y establecemos 2048 MB de RAM</p>
<p><img src="https://lh3.googleusercontent.com/ek-u56OFz301zOFBVT-6APSVojtTkmWCHtBkAeH8fGpQeoujVCuxS-QWjl8uGlLEQ6QVdxKSCQzDrEDcZiiyWJvwaO1HrbPcxQPm43KJlQtIVZHUsR3laVCxEOE7pDXrlSXfRqfz" alt=""></p>
<p>Descomentamos la siguiente línea y especificamos la ruta del script para instalación</p>
<p><img src="https://lh6.googleusercontent.com/foFeKfVJ9-oiIPZlWrwm2k0JX_bbUdNb5WvhRlQTLY-dTD2puxhY-A4dvzg1Iv5OKTvjaqTKNHVdPiqDclZlxNP8jSO0-OZqIfdVZq0sXIk0v3nLyKkt8elSaBo2EwmOJS2cgN06" alt=""></p>
<p>Creamos el archivo y especificamos los pasos para la instalación</p>
<p><img src="https://lh6.googleusercontent.com/ovnspkTQdsQlDY5as52uTtPk-sbDTAm4FN_COJqu1SqaB2uZHkXjRcVkAeIyyjqeQsYeJP73rjmXDBN4K0g72DU0p_KCWdidBolDB4eUKdxs8ob9WEnbwc6OVqp1bNyXBm8UMll7" alt=""></p>
<p>Descomentamos las siguientes líneas</p>
<p><img src="https://lh5.googleusercontent.com/FgQGeH3mwDXFXHT_lEYlwNpwlcv-MaiJ0oq_tOnRVJDwcWoQdvX0u0Fe5XTyW7sw7Rh4c5gWOtWW5G_B3HHpIDXDtd4T6atDAMQQTNCdF17gSOQoL8xn5uewi1ZaHUlQegBBrQmc" alt=""></p>
<p>Comprobamos que la configuración es correcta arrancando la máquina con vagrant up, vemos que no da ningún error</p>
<p><img src="https://lh3.googleusercontent.com/53QEd6sBoO4FyLZi0lVYaPZQ_t-vXoFnyet08ACKU7HuQvtvg7FOi1Vqj64UdFDddU5SdujKho25Mi1asIRCl6jk7BiF1KkV__8UD-ZXrBydyuGjzOaXCAOJrHxxZPBDv6YxtFwB" alt=""></p>
<p>Con el comando vagrant provision inicializamos la máquina virtual para que descargue los paquetes</p>
<p><img src="https://lh5.googleusercontent.com/6zmmiyC1xnBdV3V1077GvM_HC3L2VS_VPoBOXyv71rN3iVBg3_Sg2CVX_J15IuOhGVZ9An3KiG72f8uOyv9vuEY5oqziqqnk-vDNrENrDudAQX0OxjAmRimCQjfuECHWzm2Gcvx8" alt=""></p>
<p>Reiniciamos la máquina con vagrant reload --provision</p>
<p><img src="https://lh5.googleusercontent.com/SsauxtI20X5oc5HmNkYLb0qWi8Bml7qCvdozVlDniFIv1GqdQYgP3_Y7NiTMxjrJyjMa0fdZ0FcK6uuLKE6xTQF79V-xGhH_1o6t5GF6d4OVT6CSICYatHtkPPkmuKmv6zVT38xP" alt=""></p>
<p>Con el comando vagrant ssh nos conectamos a la MV y creamos una base de datos</p>
<p><img src="https://lh6.googleusercontent.com/lAXyDF8w0MtblbiT_XmawV-LAiT1xiQMQqhSQa__yUUJBomzWnl-W6YDaX6pePWaXoW2h97htOGjwmQ9F6um-ZTMOdBdel816qCvxdqUdup3gkpxJkdwWBL-J1apyrk1ICJ0zXqh" alt=""></p>
<p>Nos loguemos desde la web de la MV</p>
<p><img src="https://lh4.googleusercontent.com/gU_pYGP28q22i75QAEkeXyp_sRKR_S3DZmlQJPhRte7GLxAl7nhyjp9LJKlB4d1C3Qq3JfiWgIgRjksMCc1bnyEXWDDVmpiXzzosHZcrQc7FBFq_M_oRX0YI-F1uPeUObe3759pu" alt=""></p>
<p>Comprobamos su funcionamiento</p>
<p><img src="https://lh5.googleusercontent.com/o41ChES9GsNvEneR1Cydxh0dq_r31XDxZPPvNb9RP-xgODBF96tvvQVhPiUg26y9rJMy6kMYPymOUWeWVKThkpWEblGqC0dVO-g4a4IU2rX2juv32dq846TatFzq15QTbapZIFdo" alt=""></p>

