-- Alejo Galvez
-- 1
SELECT usuario.nick, grupo.descripcion 
FROM 
		usuario_grupo 
		JOIN usuario ON Usuario.ID = usuario_grupo.id_usuario 
		JOIN grupo ON Grupo.ID = usuario_grupo.id_grupo;

-- 2
SELECT grupo.descripcion FROM grupo
		JOIN usuario ON usuario.ultima_conexion = current_date;

-- 3
SELECT COUNT(id_usuario)
FROM 	usuario_grupo
		JOIN usuario ON usuario.tel = 'telefono'
		WHERE usuario_grupo.id_usuario = usuario.id;
		-- En 'telefono' iría el teléfono del usuario a buscar.

-- 4
SELECT mensaje.mensaje, estado.descripcion
FROM	mensaje
		JOIN estado ON mensaje.id_estado = estado.id;

-- 5
SELECT mensaje.mensaje, usuario.nick
FROM 	mensaje
		JOIN usuario ON usuario.tel = 'telefono'
		WHERE mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id;
		-- En 'telefono' iría el teléfono del usuario a buscar.

-- 6
SELECT mensaje.mensaje, usuario.nick, estado.descripcion
FROM	mensaje
		JOIN usuario ON usuario.tel = 'telefono'
		JOIN estado ON estado.id = mensaje.id
		WHERE mensaje.id_usr_from = usuario.id or mensaje.id_usr_to = usuario.id;
		-- En 'telefono' iría el teléfono del usuario a buscar.

-- 7
SELECT mensaje.mensaje
