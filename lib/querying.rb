def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year
  FROM Books
  WHERE Books.series_id = 1
  ORDER BY Books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM Characters
  GROUP BY name
  ORDER BY LENGTH(motto) DESC
  LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY species DESC
  LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name
  FROM Authors
  INNER JOIN Series
  ON Authors.id = Series.author_id
  JOIN Subgenres ON Subgenres.id = Series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "SELECT Series.title
  FROM Characters
  INNER JOIN Authors
  ON Authors.id = Characters.author_id
  JOIN Series on Series.author_id = Authors.id
  GROUP BY Characters.species
  ORDER BY SUM(Characters.species = 'human') DESC
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(Character_books.character_id)
  FROM Characters
  INNER JOIN Character_Books
  ON Characters.id = Character_books.character_id
  JOIN Books ON Character_Books.book_id = Books.id
  GROUP BY Characters.name
  ORDER BY COUNT(Characters.name) DESC"
end
