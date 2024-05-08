-- Cuantos eventos comienzan con la leta D y la letra A en cada decada

SELECT
	COUNT(nombre_evento) as cantidad_de_eventos,
	extract(decade from fecha_evento) as decade
FROM eventos_apocalipticos
WHERE nombre_evento like 'D%' or nombre_evento like 'A%'
GROUP BY decade;

-- Cual es el numero promedio de dias restantes hasta los eventos apocalipticos en cada decada 
SELECT
	extract(decade from fecha_evento) as decade,
	AVG(fecha_evento - CURRENT_DATE) as diferencia_dias_promedio
FROM eventos_apocalipticos
GROUP BY decade
order by decade;
