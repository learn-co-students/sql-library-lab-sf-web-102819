def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
   FROM books
   WHERE series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
   FROM characters
   GROUP BY characters.motto
   ORDER BY COUNT(characters.motto)
   LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species)
  FROM characters
  GROUP BY characters.species
  ORDER BY COUNT(characters.species) DESC
  LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
   FROM authors
   INNER JOIN subgenres
   WHERE authors.id = subgenres.id"
end

def select_series_title_with_most_human_characters
  # Only select columns what you want to return. But you still have to join
  "SELECT series.title 
  FROM series
  INNER JOIN characters
  WHERE characters.species = 'human'
  GROUP BY characters.species
  ORDER BY COUNT(characters.species) DESC"
end


def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(characters.name)
    FROM character_books
    INNER JOIN characters
    ON characters.id = character_books.character_id
    GROUP BY characters.name
    ORDER BY COUNT(name) DESC;"
end