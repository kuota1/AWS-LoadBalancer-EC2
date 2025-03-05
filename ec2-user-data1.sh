#!/bin/bash
# Actualizamos el sistema
yum update -y

# Instalamos Apache
yum install -y httpd

# Iniciamos y habilitamos Apache para que se ejecute en cada reinicio
systemctl start httpd
systemctl enable httpd

# Obtenemos el nombre de la instancia y la IP publica
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
PUBLIC_IP=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)

# Creamos la pagina web con informacion dinamica
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Bienvenido a mi Servidor EC2</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; margin-top: 50px; }
        h1 { color: #007bff; }
        p { font-size: 18px; }
    </style>
</head>
<body>
    <h1> Hola desde mi instancia EC2!</h1>
    <p>Este servidor esta corriendo en la instancia: <b>$INSTANCE_ID</b></p>
    <p>Direccion IP publica: <b>$PUBLIC_IP</b></p>
    <p> El balanceador de carga te ha enviado aqui!</p>
</body>
</html>
EOF

