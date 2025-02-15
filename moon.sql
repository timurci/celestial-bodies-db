CREATE TABLE IF NOT EXISTS moon (
  moon_id INT GENERATED BY DEFAULT AS IDENTITY,
  name VARCHAR NOT NULL UNIQUE,
  description TEXT,
  planet_id INT,
  is_spherical BOOLEAN,

  PRIMARY KEY(moon_id),
  FOREIGN KEY(planet_id) REFERENCES planet
  );