# DeepFinder

<p align="center">
  <img src="file_00000000177861f9ba677fceb102749a.png" width="300" alt="DeepFinder Logo"/>
</p>

<h1 align="center">🔍 DeepFinderr</h1>
<p align="center"><b>Encuentra lo que los administradores olvidaron borrar.</b></p>

<p align="center">
  <img src="https://img.shields.io/badge/Bash-Tool-blue?logo=gnubash&style=for-the-badge">
  <img src="https://img.shields.io/github/stars/korenvy/DeepFinderr?style=for-the-badge">
  <img src="https://img.shields.io/github/license/korenvy/DeepFinderr?style=for-the-badge">
</p>

---

## 💡 ¿Qué es DeepFinderr?

**DeepFinderr** es una herramienta escrita 100% en **Bash** para buscar archivos y directorios sensibles que suelen dejarse expuestos en servidores web. Ideal para pentesters, bug bounty hunters o cualquier alma curiosa que quiera hurgar más allá de la superficie.  

Escanea rutas comunes y personalizadas en busca de archivos como:

- `.env`
- `.git`
- `backup.zip`, `db.sql`, `wp-config.php`
- Rutas de WordPress, Laravel, Node.js, y más.

Todo esto, con una interfaz colorida, amigable y 🔥 fachera 🔥.

---

## 🧠 Características

- 🚀 Velocidad y precisión
- 🎯 Diccionario optimizado con paths sensibles
- 🌐 Soporte para sitios HTTP y HTTPS
- 🌈 Interfaz visual con múltiples colores (rojo, cyan, verde, etc)
- 📂 Estructura enfocada en backends reales: WordPress, Laravel, Node, etc
- 🧩 Soporte para combinaciones de rutas dinámicas
- 🛠️ Totalmente personalizable

---

## 📸 Captura de pantalla

```
[+] Escaneando: https://ejemplo.com

[✔] .env encontrado     --> https://ejemplo.com/.env
[✔] wp-config.php       --> https://ejemplo.com/wp-config.php
[✘] .git                --> No encontrado
...
```

---

## 📦 Instalación

```bash
git clone https://github.com/Korenvy/DeepFinder
cd DeepFinder
chmod +x DeePFinder.sh
./DeePFinder.sh
```

> Requiere: `curl`, `bash`

---

## ⚙️ Modo de uso

```bash
./DeePFinder.sh
```

Opciones disponibles Próximamente:

| Parámetro | Descripción                           |
|----------:|----------------------------------------|
| `-u`      | URL del objetivo                       |
| `-w`      | Diccionario personalizado (opcional)   |
| `-t`      | Timeout entre requests (default: 1s)   |

---

## 🧠 Ejemplos prácticos

```bash
# Abrir Deep Finder
**./DeePFinder.sh**

# Pegar URL Objetivo
**[*] ingrese la url: https://example.com
```

---

## 🧙‍♂️ Autor

Hecho con 💀 por **Korenvy (a.k.a. whois)**  
📫 Instagram / GitHub / Discord: `korenvy`

---

## ⚠️ Disclaimer

> Esta herramienta es solo para **uso educativo y de auditoría autorizada**.  
> El uso indebido de DeepFinderr **puede violar leyes locales**. No me hago responsable si terminás casado con el FBI.

---

## ⭐ Dale una estrella si te sirvió

¡Un simple `⭐` ayuda mucho y mantiene viva la herramienta!

---

