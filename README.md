AWS Load Balancer con EC2
Este proyecto demuestra cómo configurar un Application Load Balancer (ALB) en AWS que distribuye tráfico a dos instancias EC2 dentro de un Target Group.

Arquitectura
El ALB distribuye tráfico HTTP hacia dos instancias EC2, asegurando alta disponibilidad en diferentes zonas de disponibilidad (AZ).

Load Balancer: ALB (Internet-facing).
Instancias EC2: 2 instancias en diferentes zonas de disponibilidad (AZ).
Target Group: Grupo que recibe las solicitudes y las redirige a las instancias EC2.
Seguridad: Grupo de seguridad con acceso HTTP (80) y SSH (22).
Requisitos Previos
Para replicar el proyecto necesitas:

Una cuenta de AWS.
Un usuario IAM con permisos para EC2, ALB y Security Groups.
Conocimientos básicos de la consola de AWS.
Pasos de Implementación
Lanzar dos instancias EC2 en diferentes zonas de disponibilidad.
Configurar el User Data en cada una de las instancias EC2 para instalar Apache automáticamente.
Crear un Target Group y registrar las instancias EC2.
Crear el Application Load Balancer (ALB) y asociarlo al Target Group.
Probar el ALB accediendo a su DNS público en el navegador.
Archivos Incluidos
user-data.sh: Script usado en las instancias EC2.
Capturas de pantalla del proceso en la consola de AWS.
Logs del tráfico HTTP recibido por las instancias.
Autor
 Creado por Roberto Carlos Rodríguez Guzmán
 GitHub: https://github.com/kuota1



