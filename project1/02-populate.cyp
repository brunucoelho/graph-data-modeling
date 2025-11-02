MATCH
  path0 = (n5:Director {
    NameDirector: "[
      'Steven Spielberg',
      'Christopher Nolan',
      'Martin Scorsese',
      'Greta Gerwig',
      'Quentin Tarantino',
      'Kathryn Bigelow',
      'James Cameron',
      'Denis Villeneuve',
      'Ava DuVernay',
      'Ridley Scott'
    ]"
  })-[:DIRECTED_IN]->(n2:Serie {
    SerieId: "",
    NameSerie: "",
    ReleaseDate: "",
    Gerne: "",
    NameDirector: ""
  })<-[:WATCHED]-(:User {
    UserId: "['0001','0002','0003','0004','0005','0006','0007','0008','0009','0010']",
    NameUser: "['Ana', 'Bruno', 'Carlos', 'Daniela', 'Eduardo', 'Fabiana', 'Giovani', 'Hortência', 'Igor', 'Janaina']"
  })-[:WATCHED]->(n1:Movie {
    MovieId: "",
    NameMovie: "",
    ReleaseDate: "",
    Gerne: "",
    NameDirector: ""
  })-[:IN_GENRE]->(:Genre {
    Gerne: "[Sci-Fi, Drama, Action, Comedy, Terror, Thriller, Documentary]"
  })<-[:IN_GENRE]-(n2)
  <-[:ACTED_IN]-(n4:Actor {
    NameActor: "[
      'Meryl Streep',
      'Leonardo DiCaprio',
      'Denzel Washington',
      'Scarlett Johansson',
      'Tom Hanks',
      'Cate Blanchett',
      'Brad Pitt',
      'Viola Davis',
      'Robert Downey Jr.',
      'Natalie Portman'
    ]"
  }),
  path1 = (n4)-[:ACTED_IN]->(n1)<-[:DIRECTED_IN]-(n5)
RETURN path0, path1;


MATCH
  path0 = (n5:Director {
    NameDirector: "[
      'Steven Spielberg',
      'Christopher Nolan',
      'Martin Scorsese',
      'Greta Gerwig',
      'Quentin Tarantino',
      'Kathryn Bigelow',
      'James Cameron',
      'Denis Villeneuve',
      'Ava DuVernay',
      'Ridley Scott'
    ]"
  })-[:DIRECTED_IN]->(n2:Serie {
    SerieId: "",
    NameSerie: "",
    ReleaseDate: "",
    Gerne: "",
    NameDirector: ""
  })<-[:WATCHED]-(:User {
    UserId: "['0001','0002','0003','0004','0005','0006','0007','0008','0009','0010']",
    NameUser: "['Ana', 'Bruno', 'Carlos', 'Daniela', 'Eduardo', 'Fabiana', 'Giovani', 'Hortência', 'Igor', 'Janaina']"
  })-[:WATCHED]->(n1:Movie {
    MovieId: "",
    NameMovie: "",
    ReleaseDate: "",
    Gerne: "",
    NameDirector: ""
  })-[:IN_GENRE]->(:Genre {
    Gerne: "[Sci-Fi, Drama, Action, Comedy, Terror, Thriller, Documentary]"
  })<-[:IN_GENRE]-(n2)
  <-[:ACTED_IN]-(n4:Actor {
    NameActor: "[
      'Meryl Streep',
      'Leonardo DiCaprio',
      'Denzel Washington',
      'Scarlett Johansson',
      'Tom Hanks',
      'Cate Blanchett',
      'Brad Pitt',
      'Viola Davis',
      'Robert Downey Jr.',
      'Natalie Portman'
    ]"
  }),
  path1 = (n4)-[:ACTED_IN]->(n1)<-[:DIRECTED_IN]-(n5)
RETURN path0, path1;


MERGE
  (n5:Director {
    NameDirector: "[
      'Steven Spielberg',
      'Christopher Nolan',
      'Martin Scorsese',
      'Greta Gerwig',
      'Quentin Tarantino',
      'Kathryn Bigelow',
      'James Cameron',
      'Denis Villeneuve',
      'Ava DuVernay',
      'Ridley Scott'
    ]"
  })-[:DIRECTED_IN]->(n2:Serie {
    SerieId: "",
    NameSerie: "",
    ReleaseDate: "",
    Gerne: "",
    NameDirector: ""
  })<-[:WATCHED]-(:User {
    UserId: "['0001','0002','0003','0004','0005','0006','0007','0008','0009','0010']",
    NameUser: "['Ana', 'Bruno', 'Carlos', 'Daniela', 'Eduardo', 'Fabiana', 'Giovani', 'Hortência', 'Igor', 'Janaina']"
  })-[:WATCHED]->(n1:Movie {
    MovieId: "",
    NameMovie: "",
    ReleaseDate: "",
    Gerne: "",
    NameDirector: ""
  })-[:IN_GENRE]->(:Genre {
    Gerne: "[Sci-Fi, Drama, Action, Comedy, Terror, Thriller, Documentary]"
  })<-[:IN_GENRE]-(n2)
  <-[:ACTED_IN]-(n4:Actor {
    NameActor: "[
      'Meryl Streep',
      'Leonardo DiCaprio',
      'Denzel Washington',
      'Scarlett Johansson',
      'Tom Hanks',
      'Cate Blanchett',
      'Brad Pitt',
      'Viola Davis',
      'Robert Downey Jr.',
      'Natalie Portman'
    ]"
  });

MERGE (n4)-[:ACTED_IN]->(n1)<-[:DIRECTED_IN]-(n5);
