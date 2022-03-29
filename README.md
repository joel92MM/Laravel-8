# Laravel-8
Repositorio dedicado a prácticas de Laravel 8 para aprender


Requisitos para instalar laravel 8 en Windows

- Disponer de MovaXterm
- Disponer de VSCODE
- Disponer de Laragon

Instalación de Composer

Comprobamos que no tenemos instalado composer en nuestro equipo con el siguiente comando

> composer

Si no lo tenemos instalado, iremos a la siguiente direccion

> https://getcomposer.org/download/

![](assets/README-554282a2.png)

Luego nos descargaremos composer clickando en el siguiente enlace

![](assets/README-11bfb981.png)

Procedemos a instalar composer desde el setup, nos aparecerá la siguiente ventana en la cual seleccionamos la primera opcion

![](assets/README-679edf5e.png)

Seguidamente en la siguiente ventana no seleccionamos nada, solo continuamos

![](assets/README-0e505fb3.png)

En la siguiente ventana tenemos que especificar la ruta donde tenemos el archivo ejecutable de php dentro de laragon en mi caso seria la de la siguiente imagen

![](assets/README-3d1fd350.png)

En la proxima ventana no seleccionamos nada y continuamos con la instalacion

![](assets/README-183e2b02.png)

Clickamos en install, tardara un poco en instalarse.

Para comprobar si tenemos composer instalado iremos a moba y introducimos el comando

> Composer

![](assets/README-5729ab2b.png)


Ahora procederemos a instalar laravel, nos ponemos en siguiente ruta e introducimos el comando que aparece en la imagen


> composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

 ![](assets/README-67a0dbfa.png)

 Seguidamente introducimos el siguiente comando que instalará laravel

 > composer create-project --prefer-dist laravel/laravel prueba 8.0

 ![](assets/README-4e9082d6.png)

 Nos aseguramos que se a instalado con el comando

 > Laravel

 ![](assets/README-e421d65a.png)


 Para crear un proyecto nuevo introducimos *laravel new* como en el ejemplo siguiente

 ![](assets/README-8d0072da.png)

 Seguidamente tendremos los proyectos creados en la carpeta

 ![](assets/README-dd2fc430.png)


 Reiniciamos el servicio apache de laragon

 ![](assets/README-f19b606f.png)

 En el navegador introducimos el nombre del proyecto seguido de .test para ver la pagina principal en mi caso seria asi

 ![](assets/README-633d05a5.png)
