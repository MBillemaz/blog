User.create!([
  {email: "admin@admin.com", password: "administrator", password_confirmation: "administrator", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2017-11-13 10:09:27", last_sign_in_at: "2017-11-13 09:54:37", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Category.create!([
  {name: "Technologie"},
  {name: "Voyages"},
  {name: "Nourriture"}
])
Comment.create!([
  {post_id: 4, text: "J'avoue, c'est grave abusé... "},
  {post_id: 4, text: "Le prof doit se retourner dans sa tombe !\r\n"},
  {post_id: 4, text: "Quoi ? mais le prof est pas mort !"},
  {post_id: 2, text: "Serieux ?! j'y était aussi ! Quelle coincidence !"},
  {post_id: 2, text: "Coincidence ? On est la même personne abruti !"}
])
Post.create!([
  {name: "Pc", category_id: 1, description: "J'ai un nouveau pc !"},
  {name: "Pays bas", category_id: 2, description: "Les pays bas c'est génial ! j'y suis allé pour un festival et... WOUAH !\r\n"},
  {name: "Essai", category_id: 3, description: "J'ai fais des cookies aujourd'hui ! \r\nje vais les gouter.\r\n\r\n...\r\n...\r\n...\r\n\r\nJE MEURS ! \r\nFPEJPZGJGRRZG\r\ngkrPRJgprge"},
  {name: "Rails", category_id: 1, description: "Ceci est très moche... Ce text_area ne laisse même pas les retours a la ligne dans la base de donnée ! et je crois que j'ai la flemme de faire du javascript pour ça."},
  {name: "Egypte", category_id: 2, description: "Il fait chaud la bas..."},
  {name: "Chevre miel", category_id: 3, description: "J'ai faim ! faites moi un sandwich chevre miel "}
])
