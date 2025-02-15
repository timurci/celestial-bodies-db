CREATE TABLE IF NOT EXISTS galaxy_types (
  galaxy_types_id INT GENERATED BY DEFAULT AS IDENTITY,
  name VARCHAR NOT NULL UNIQUE,
  description TEXT,

  PRIMARY KEY(galaxy_types_id)
);

CREATE TABLE IF NOT EXISTS galaxy (
  galaxy_id INT GENERATED BY DEFAULT AS IDENTITY,
  name VARCHAR NOT NULL UNIQUE,
  description TEXT,
  age_in_millions_of_years INT NOT NULL,
  galaxy_types_id INT,

  PRIMARY KEY(galaxy_id),
  FOREIGN KEY(galaxy_types_id) REFERENCES galaxy_types
  );
