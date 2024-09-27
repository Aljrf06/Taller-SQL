USE huellitas;
-- o   Insertar 3 maestros zapateros, 2 ayudantes y 2 cortadores en base de datos. 

INSERT INTO cargo_empleado VALUES(1,"Maestro Zapatero"),(2,"Ayudante"),(3,"Cortador");
INSERT INTO empleado VALUES (1111111,"Carlos Gutiérrez","321-123-4567","Calle 10 #5 -3","2001-03-10",1), 	# Maestro Zapatero
							(2222222,"María Sánchez","321-987-6543","Calle 20 #6 -4","2003-06-25",1), 	 	# Maestro Zapatero
                            (3333333,"Pedro Ramírez","320-456-7890","Calle 15 #8 -2","2000-11-12",1),	 	# Maestro Zapatero
                            (4444444,"Luisa Fernández","310-654-9876","Calle 30 #12 -5","2002-05-14",2),  # Ayudante
                            (5555555,"Miguel Torres","315-789-4321","Calle 40 #9 -7","2001-08-20",2),  	# Ayudante
                            (6666666,"Ricardo Díaz","314-321-8765","Calle 50 #10 -6","1999-02-18",3),     # Cortador
                            (7777777,"Laura Martínez","316-654-3210","Calle 60 #14 -8","2003-12-01",3);   # Cortador

-- ------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO proveedor VALUES (1,"ZAPCO","Av. Siempre Viva 123","contact@zapco.com","312-7890");
INSERT INTO lote_materia_prima VALUES (1,"2021-07-15",NULL,5555555,1),(2,"2021-07-15",NULL,5555555,1),(3,"2021-07-15",NULL,4444444,1);
INSERT INTO suela VALUES (1,"Suela A"),(2,"Suela B"),(3,"Suela C");
INSERT INTO lote_suela VALUES (1,1,20),(2,2,20),(3,3,20);
INSERT INTO material VALUES (1,"Cuero Sintético"),(2,"Lona Rugosa"),(3,"Poliuretano");
INSERT INTO lote_material VALUES (1,1,15),(2,2,15),(3,3,15);
INSERT INTO accesorio VALUES (1,"Hebilla Metálica"),(2,"Cinta Decorativa"),(3,"Cordón Elástico");
INSERT INTO lote_accesorio VALUES (1,1,25),(2,2,25),(3,3,25);

-- o	Insertar un nuevo diseño de un zapato.

INSERT INTO diseño VALUES (1,2,"Zapato Casual",1111111);
INSERT INTO diseño_has_accesorio VALUES (1,1),(1,3);
INSERT INTO material_diseño VALUES (1,1,2);

-- -----------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO molde VALUES (1,1,"38 Americana"),(2,1,"40 Europea"),(3,1,"42 Oriental");
INSERT INTO lote_molde VALUES (1,1,12),(2,2,12),(3,3,12);
INSERT INTO zapato VALUES (1,1),(2,2),(3,3);
INSERT INTO material_zapato VALUES (1,1,2,7777777);

-- o	Insertar un nuevo lote de 10 zapatos generados a partir de este diseño y con los empleados ya creados.

INSERT INTO lote_zapatos VALUES (1,"2023-09-27");
INSERT INTO zapatos_lote_producto VALUES (1,1,10); # DIEZ ZAPATOS DEL MISMO DISEÑO, CORTADOR Y MAESTRO ZAPATERO

-- ------------------------------------------------------------------------------------------------------------------------------------------------------

-- o	Modificar el rol de un empleado de ayudante a maestro zapatero. 

UPDATE empleado SET id_cargo_empleado = 1 WHERE id_cargo_empleado= 2 AND id_empleado = 4444444;

-- ----------------------------------------------------------------------------------------------------------------------------------------------------

-- o	Actualizar un diseño de un zapato agregando un accesorio nuevo.

INSERT INTO diseño_has_accesorio VALUES (1,2);

-- -------------------------------------------------------------------------------------------------------------------------------------------------------

-- o	Actualizar un diseño de un zapato agregando un trozo de un material diferente.

INSERT INTO material_diseño VALUES (1,3,3);

-- -------------------------------------------------------------------------------------------------------------------------------------------------

-- o	Eliminar un zapato de un lote.

DELETE FROM zapatos_lote_producto WHERE id_zapato = 1;

-- --------------------------------------------------------------------------------------------------------------------------------------------- 

-- o	Eliminar un diseño de un zapato en base de datos que ya tenga un lote de 10 zapatos generados.

# No se puede eliminar directamente debido a las restricciones. Necesitarás un trigger o eliminar las dependencias primero.

-- --------------------------------------------------------------------------------------------------------------------------------------------------------

-- o	Insertar un nuevo accesorio en base de datos y luego insertar un diseño que use este accesorio.

INSERT INTO accesorio VALUES (4,"Cremallera Decorativa");
INSERT INTO diseño VALUES (2,1,"Zapato Deportivo",2222222);
INSERT INTO diseño_has_accesorio VALUES (2,4);
