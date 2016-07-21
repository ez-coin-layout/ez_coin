Admin::Manager.create!([
  {username: "神", password_digest: "$2a$10$M/HsQinqpJXyYqxTOFPLku/h54umQYyNV8gZodtCwA66tPvkSyfWG", authority: "all"}
])


Default::User.create(email: 'hoge@hoge.com', ezid: 'hogehoge', password: 'hogehoge', total_point: 0, via_site: 0)
