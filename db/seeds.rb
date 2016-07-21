Admin::Manager.create!([
  {username: "神", password_digest: "$2a$10$M/HsQinqpJXyYqxTOFPLku/h54umQYyNV8gZodtCwA66tPvkSyfWG", authority: "all"}
])
Default::DepositRequest.create!([
  {user_id: 1, amount: 10000, status: "0", request_point: 1000},
  {user_id: 1, amount: 80000, status: "0", request_point: 8000},
  {user_id: 1, amount: 2222, status: "0", request_point: 222},
  {user_id: 1, amount: 777, status: "0", request_point: 77},
  {user_id: 1, amount: 100000, status: "0", request_point: 10000}
])
Default::User.create!([
  {email: "os18700241@gmail.com", ezid: "hogehoge", password_digest: "$2a$10$6m9GW.n4XkFK6TIEZS5Hr./qfQd3bR1L889aYftvwQsuNOgPU0hYK", total_point: 0, via_site: "0"}
])
