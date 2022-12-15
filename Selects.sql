--Desafio 1
SELECT Nome,Ano 
FROM Filmes

--Desafio 2
SELECT * 
FROM Filmes
ORDER BY Ano

--Desafio 3
SELECT * 
FROM Filmes 
WHERE UPPER(Nome) = 'DE VOLTA PARA O FUTURO'

--Desafio 4 
SELECT * 
FROM Filmes 
WHERE Ano = 1997

--Desafio 5 
SELECT * 
FROM Filmes 
WHERE Ano > 2000

-- Desafio 6
SELECT * 
FROM Filmes 
WHERE Duracao > 100 
  AND Duracao < 150 

-- Desafio 7
SELECT Ano, COUNT(*) Quantidade
FROM Filmes 
GROUP BY Ano
ORDER BY Quantidade DESC

-- Desafio 8
SELECT * 
FROM Atores 
WHERE Genero = 'M'

-- Desafio 9
SELECT * 
FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome

-- Desafio 10
SELECT Filmes.Nome, Generos.Genero 
FROM FilmesGenero
  INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
  INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- Desafio 11
SELECT Filmes.Nome, Generos.Genero
FROM FilmesGenero 
  INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
  INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero 
WHERE Generos.Genero = 'Mistério'

-- Desafio 12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 
FROM ElencoFilme
  INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
  INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
