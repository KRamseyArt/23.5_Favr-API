DROP TABLE IF EXISTS favors;

CREATE TABLE favors (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  from_user_id INTEGER REFERENCES users(id) ON DELETE SET NULL,
  to_user_id INTEGER REFERENCES users(id) ON DELETE SET NULL,
  favor_title TEXT NOT NULL,
  favor_content TEXT NOT NULL,
  assigned_date TIMESTAMPTZ DEFAULT now() NOT NULL,
  completed BOOLEAN DEFAULT false NOT NULL,
  cancelled BOOLEAN DEFAULT false NOT NULL,
  end_date TIMESTAMPTZ
);