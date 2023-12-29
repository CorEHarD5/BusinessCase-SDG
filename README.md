# Caso de Uso - Petición Cliente

-Punto 1: Solicitan tener una BD en producción y otra en el entorno de desarrollo. Estas BD serán cargadas con los datos que tienen en un CSV a parte (heroes.csv) alojado en un blob de azure (Tendremos que pedirle los siguientes datos al cliente mediante un correo formal para configurarlo: URL del blob y en caso de que el blob sea privado el Token SAS), ya que ahora mismo trabajan directamente en el CSV y les es engorroso, por lo que han decidido integrarlo en las BD previamente mencionadas.


-Punto 2: Nos ha pedido que los objetos tengan una nomenclatura específica, la estructura a seguir es: DB (Base de datos), SC (Schema), TB (Tabla), Siglas de la empresa (HR) y por último el entorno (Si es DEV o PRO). 


Nos ha facilitado un ejemplo de lo que solicita: 

-Base de datos: BD_HR_PRO

-Esquema: SC_HR_PRO_M

-Tabla: TB_HR_PRO_HEROES 


(Si durante el ejercicio se crean más objetos como vistas, tareas,etc seguir la nomenclatura facilitada previamente)


-Punto 3: Nos ha solicitado que las Bases de datos tengan tantos esquemas como géneros haya en la columna Gender del CSV (F y M) y que cada esquema tenga una tabla en la que se cargaran los datos del CSV. Todas las tablas deben tener las mismas columnas.


-Punto 4: La frecuencia en la que quieren cargar los datos desde el CSV es de al menos 1 vez cada 2 horas, para así evitar tener que actualizar los cambios a mano. (Para realizar este punto se pueden usar diversas herramientas como Tareas programadas, Stored procedures o con lenguajes de programación, elegir la que se quiera)


-Punto 5: Nos ha pedido que creemos unas vistas de unos datos para tenerlos siempre a mano y que puedan ser usados en sus informes. 


Las vistas o vista a crear deben contemplar lo siguiente:


Una vista para mostrar los campos Name, Identity, Publisher y Eye Color de los héroes de Marvel que tengan ojos azules, tanto masculinos como femeninos.
Una vista que muestre todos los héroes de DC Comics (Masculino y femenino).
Una vista que muestre el Name y el Identity de los heroes con el pelo negro (Masculino y femenino).


-Punto 6: Para terminar con las visualizaciones de datos nos han pedido crear algún tipo de gráfico o dashboard para ver de un vistazo ciertos datos de sus BD. Los informes que nos han pedido son los siguientes:


Un informe comparativo de la cantidad de héroes masculinos y femeninos.
Un informe con el número de héroes que tengan la inteligencia alta.

(Nota: realizar utilizando las herramientas de snowflake. NO es necesario crear un gráfico entregable. Sólo usando la propia interfaz web de snowflake (Snowsight))



-Punto 7: Nos ha solicitado también que creemos tres usuarios locales en Snowflake cuyo email es su nombre seguido de @heroes :

Mike que será el administrador de la plataforma, Johnny que será el analista de datos y Sarah que será la desarrolladora.



-Punto 8: También nos ha especificado qué permisos requiere para cada usuario:

Mike: Tiene que poder acceder a todo sin restricciones, gestionar permisos y usuarios y crear todo tipo de objetos en todos los entornos.



Johnny: Tiene que poder crear tablas e insertar datos en la BD de producción pero no puede acceder ni realizar ninguna acción sobre el entorno de desarrollo.



Sarah: Tiene que poder crear, modificar y eliminar todo tipo de objetos en la BD de desarrollo y además también se le permite actualizar los datos en las tablas de producción.



-Punto 9: Para el resto de usuarios quieren activar el SSO (Single Sign On) con Azure para que de esta forma puedan conectarse directamente con los usuarios creados en su Active Directory de Azure.


(Nota:Se deberá solicitar al cliente mediante un correo formal los siguientes datos: Nombre de su aplicación, ID de la aplicación, Certificado y URL de inicio de SSO. Estos datos serán necesarios para configurar el SSO)


-Punto 10: Nos han pedido también que creemos los Warehouses que ejecutan las consultas. Para ello nos han solicitado crear 1 Warehouse para cada entorno, ajustando las características y configuración más óptima necesaria para cada entorno (Producción necesitará más clusters, créditos,etc que DEV).


-Punto 11: Nos ha transmitido su preocupación por los costes, actualmente quieren establecer un límite de 20 créditos para toda la plataforma. Usando las herramientas de Snowflake distribuir estos créditos entre los entornos/cuenta. También quiere que se les notifique cuando se pasen ciertos umbrales de coste (Adecuarlos de forma óptima). (Nota: no es necesario ningún informe. Con las herramientas de snowflake, delimitar el uso máximo de los créditos y distribuir la carga de proceso eficientemente entre entornos).


-Punto 12: El cliente nos ha dicho que quiere visualizar los datos con una herramienta externa (Qlik, Tableau, etc). Para configurarlo deberás enviar un correo electrónico al cliente (Tutores del curso) solicitando los datos necesarios para realizar dicha configuración, indicando servidor (Snowflake account), puerto, base de datos, schema, warehouse, rol, user y password para validar su acceso, y comprobar que pueden cargar sus datos.


-Punto 13: Por último nos ha comentado que estaría interesado en mejorar la seguridad de sus datos en un futuro, por eso nos ha pedido que le expliquemos qué medidas de seguridad pueden tomar para proteger sus datos aún más.


El siguiente punto es Opcional y solo debe hacerse si se ha acabado el ejercicio antes de tiempo:


-Punto extra: El cliente nos ha pedido que si es posible le gustaría tener implementada una pipeline de CI/CD con GitHub Actions, para de esta manera automatizar el despliegue de Terraform cuando se realicen cambios (Pull Request) en el repositorio de GitHub previamente creado. De esta forma si el Commit es correcto se desplegará la infraestructura automáticamente.