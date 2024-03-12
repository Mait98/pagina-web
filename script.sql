
-- Crear la tabla tb_usuarios
CREATE TABLE tb_usuarios (
    id_usuario INT(10) PRIMARY KEY,
    nombre_usuario VARCHAR(60),
    id_ciudad INT(4),
    direccion VARCHAR(50),
    rol INT(3),
    id_refiere INT(10),
    estado BIT,
    contraseña_usuario VARCHAR(10),
    correo_usuario VARCHAR(45),
    telefono_usuario INT(13)
);

-- Crear la tabla tb_ciudad
CREATE TABLE tb_ciudad (
    id_ciudad INT(4) PRIMARY KEY,
    nombre_ciudad VARCHAR(45),
    cobertura BIT
);

-- Crear la tabla tb_productos
CREATE TABLE tb_productos (
    id_productos INT PRIMARY KEY,
    descripcion_producto VARCHAR(45),
    id_categoria INT(4),
    precio INT,
    camtidad INT(4),
    id_oferta INT(4)
);

-- Crear la tabla tb_rol
CREATE TABLE tb_rol (
    id_rol INT PRIMARY KEY,
    descripcion VARCHAR(45),
    nombre VARCHAR(45)
);

-- Crear la tabla tb_oferta
CREATE TABLE tb_oferta (
    id_oferta INT PRIMARY KEY,
    nombre_oferta VARCHAR(45),
    descripcion VARCHAR(45),
    estado BIT,
    fecha_inicio DATE,
    fecha_fin DATE,
    tb_productos_id_productos INT
);

-- Crear la tabla tb_carrito
CREATE TABLE tb_carrito (
    id_carrito INT PRIMARY KEY,
    id_usuario INT(10),
    id_producto INT,
    estado BIT,
    id_pedido INT
);

-- Crear la tabla tb_categorias
CREATE TABLE tb_categorias (
    id_categoria INT(4) PRIMARY KEY,
    nombre_categoria VARCHAR(45),
    descripcion VARCHAR(100),
    estado BIT
);

-- Crear la tabla tb_usuario_rol
CREATE TABLE tb_usuario_rol (
    id_usuario INT(10),
    id_rol INT,
    estado BIT,
    PRIMARY KEY (id_usuario, id_rol)
);

-- Crear la tabla tb_pedido
CREATE TABLE tb_pedido (
    id_pedido INT PRIMARY KEY,
    fecha_pago DATE,
    meotodo_pago VARCHAR(45),
    estado VARCHAR(40)
);
