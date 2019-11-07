def select_books_titles_and_years_in_first_series_order_by_year
  "
  SELECT books.title, books.year FROM books
  WHERE series_id = 1
  ORDER BY year
  "
end

def select_name_and_motto_of_char_with_longest_motto
  "
  SELECT name, motto FROM characters
  GROUP BY motto
  HAVING MAX(LENGTH(motto))
  LIMIT 1
  "
end


def select_value_and_count_of_most_prolific_species
  "
  SELECT species, COUNT(species) FROM characters
  GROUP BY species
  ORDER BY COUNT(species) DESC
  LIMIT 1
  "
end

def select_name_and_series_subgenres_of_authors
  "
  SELECT authors.name, subgenres.name FROM authors
  JOIN series
  ON authors.id = series.author_id
  JOIN subgenres
  ON series.subgenre_id = subgenres.id
  "
end

def select_series_title_with_most_human_characters
  "
  SELECT series.title FROM series
  JOIN authors
  ON series.author_id = authors.id
  JOIN characters
  ON authors.id = characters.author_id
  GROUP BY characters.species
  ORDER BY characters.species DESC
  LIMIT 1
  "
end

def select_character_names_and_number_of_books_they_are_in
  "
  SELECT characters.name, COUNT(characters.id) FROM characters
  JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(characters.id) DESC
  "
  # "
  # SELECT COUNT(*) FROM characters
  # "
end
