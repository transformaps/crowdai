User.create!([
  {email: "sean.carroll@epfl.ch", encrypted_password: "$2a$10$jGobjG0fvT9tPSYTWR46kOoW/85LdRcVuajWpFJPPZ5uH5xete9r2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-03-17 13:20:06", last_sign_in_at: "2016-03-17 13:20:06", current_sign_in_ip: "::1", last_sign_in_ip: "::1", confirmation_token: "bvuxFhxLNioJzYSSRV4M", confirmed_at: "2016-03-17 13:19:54", confirmation_sent_at: "2016-03-17 13:19:13", failed_attempts: 0, unlock_token: nil, locked_at: nil, admin: false, verified: false, verification_date: nil, username: "sean", country: nil, city: nil, timezone: nil, unconfirmed_email: nil, hosting_institution_id: 1, hosting_institution_primary: false, first_name: "Sean", last_name: "Carroll", name: nil, email_public: false, bio: "Something interesting about me", website: "my website", github: "github id", linkedin: "linked in id", twitter: "twitter id"},
  {email: "sean@example.com", encrypted_password: "$2a$10$ETHaXZb/.7HmKIo8sKvZgeKMOKBoRQRSApf7uhqEmTZN3mNklIzYG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-03-17 14:20:07", last_sign_in_at: "2016-03-17 14:20:07", current_sign_in_ip: "::1", last_sign_in_ip: "::1", confirmation_token: "femyzGxVMhSbrkFfiDyv", confirmed_at: "2016-03-17 14:19:56", confirmation_sent_at: "2016-03-17 14:19:41", failed_attempts: 0, unlock_token: nil, locked_at: nil, admin: false, verified: false, verification_date: nil, username: "competitor", country: nil, city: nil, timezone: nil, unconfirmed_email: nil, hosting_institution_id: nil, hosting_institution_primary: false, first_name: nil, last_name: nil, name: nil, email_public: false, bio: nil, website: nil, github: nil, linkedin: nil, twitter: nil}
])
Competition.create!([
  {hosting_institution_id: 1, competition: "The Second Annual Data Science Bowl", status_cd: "running", description: "<div>Lorem ipsum dolor sit amet, no nec mediocrem maiestatis democritum, dolor voluptatum mediocritatem ea nam, mel ipsum alienum ex. Mundi tantas ut sea. Aeterno torquatos quo ad. Mel nusquam suscipit ad. Usu ut omnes appareat, et quo mazim facilis consequuntur.</div><div><br></div><div>Vis laoreet adipisci percipitur ei. Duo dicat antiopam ex, illud denique persequeris ius te, ad pro civibus eleifend persequeris. Dicta gubergren in vix. Ius nulla choro posidonium id. Appareat percipitur id per, vocent iriure eu pro, pri augue corpora ut. Cu mutat nullam vis, exerci facilisi referrentur te cum.</div><div><br></div><div>His et quaestio persecuti. Cum officiis necessitatibus in. Enim referrentur repudiandae ea cum. Eam viderer volumus ut, eam et ferri movet placerat. No pro mutat aliquip, homero legere assentior sea at.</div><div><br></div><div>Cu dicta impedit vel, lorem ceteros no quo. Deseruisse expetendis eam ne, qui ad possit diceret albucius, nec an quidam detraxit euripidis. Suas erat aliquip est an, ea equidem pericula iudicabit ius, per dignissim aliquando no. Vidisse impedit graecis duo no. Vix ad lorem tation sapientem.</div>", evaluation: "", evaluation_criteria: "", rules: "", prizes: "", resources: "", dataset_description: nil, submission_instructions: ""},
  {hosting_institution_id: 1, competition: "The Second Annual Data Science Bowl", status_cd: "draft", description: "<div>Lorem ipsum dolor sit amet, no nec mediocrem maiestatis democritum, dolor voluptatum mediocritatem ea nam, mel ipsum alienum ex. Mundi tantas ut sea. Aeterno torquatos quo ad. Mel nusquam suscipit ad. Usu ut omnes appareat, et quo mazim facilis consequuntur.</div><div><br></div><div>Vis laoreet adipisci percipitur ei. Duo dicat antiopam ex, illud denique persequeris ius te, ad pro civibus eleifend persequeris. Dicta gubergren in vix. Ius nulla choro posidonium id. Appareat percipitur id per, vocent iriure eu pro, pri augue corpora ut. Cu mutat nullam vis, exerci facilisi referrentur te cum.</div><div><br></div><div>His et quaestio persecuti. Cum officiis necessitatibus in. Enim referrentur repudiandae ea cum. Eam viderer volumus ut, eam et ferri movet placerat. No pro mutat aliquip, homero legere assentior sea at.</div><div><br></div><div>Cu dicta impedit vel, lorem ceteros no quo. Deseruisse expetendis eam ne, qui ad possit diceret albucius, nec an quidam detraxit euripidis. Suas erat aliquip est an, ea equidem pericula iudicabit ius, per dignissim aliquando no. Vidisse impedit graecis duo no. Vix ad lorem tation sapientem.</div>", evaluation: "", evaluation_criteria: "", rules: "", prizes: "", resources: "", dataset_description: nil, submission_instructions: ""}
])
HostingInstitution.create!([
  {institution: "EPFL Salathé Lab", address: "Avenue Giuseppe Motta 31\r\n1202 Genève", description: "", approved: false}
])
Image.create!([
  {imageable_id: 1, imageable_type: "User", description: nil, image_file_name: "sean_profile_pic.jpg", image_content_type: "image/jpeg", image_file_size: 105845, image_updated_at: "2016-03-17 13:31:53"}
])
Post.create!([
  {topic_id: 1, user_id: 1, post: "Lorem ipsum dolor sit amet, no nec mediocrem maiestatis democritum, dolor voluptatum mediocritatem ea nam, mel ipsum alienum ex. Mundi tantas ut sea. Aeterno torquatos quo ad. Mel nusquam suscipit ad. Usu ut omnes appareat, et quo mazim facilis consequuntur.", votes: 0, flagged: false, notify: true},
  {topic_id: 1, user_id: 1, post: "[quote]Lorem ipsum dolor sit amet, no nec mediocrem maiestatis democritum, dolor voluptatum mediocritatem ea nam, mel ipsum alienum ex. Mundi tantas ut sea. Aeterno torquatos quo ad. Mel nusquam suscipit ad. Usu ut omnes appareat, et quo mazim facilis consequuntur.[/quote]<br><br>Lorem ipsum dolor sit amet, no nec mediocrem maiestatis democritum, dolor voluptatum mediocritatem ea nam, mel ipsum alienum ex. Mundi tantas ut sea. Aeterno torquatos quo ad. Mel nusquam suscipit ad. Usu ut omnes appareat, et quo mazim facilis consequuntur.<br><br><br>", votes: 0, flagged: false, notify: true},
  {topic_id: 2, user_id: 1, post: "Lorem ipsum dolor sit amet, no nec mediocrem maiestatis democritum, dolor voluptatum mediocritatem ea nam, mel ipsum alienum ex. Mundi tantas ut sea. Aeterno torquatos quo ad. Mel nusquam suscipit ad. Usu ut omnes appareat, et quo mazim facilis consequuntur.", votes: 0, flagged: false, notify: true},
  {topic_id: 2, user_id: 1, post: "Such an interesting idea!<br><br>", votes: 0, flagged: false, notify: true},
  {topic_id: 2, user_id: 1, post: "Thanks for the helpful information about ML resources.", votes: 0, flagged: false, notify: true}
])
Submission.create!([
  {competition_id: 2, user_id: 1, team_id: nil, evaluated: true, score: 0.9, submission_type_cd: "user", description: "Submission 1"},
  {competition_id: 2, user_id: 1, team_id: nil, evaluated: true, score: 0.75, submission_type_cd: "user", description: "Attempt 2"},
  {competition_id: 2, user_id: 1, team_id: nil, evaluated: false, score: nil, submission_type_cd: "user", description: "Submission 3"},
  {competition_id: 2, user_id: 2, team_id: nil, evaluated: false, score: nil, submission_type_cd: "user", description: "My first try"},
  {competition_id: 2, user_id: 2, team_id: nil, evaluated: true, score: 0.91, submission_type_cd: "user", description: "My second try"},
  {competition_id: 2, user_id: 2, team_id: nil, evaluated: false, score: nil, submission_type_cd: "user", description: "Submission 3"}
])
SubmissionFile.create!([
  {submission_id: 1, seq: 0, submission_file_file_name: "test_csv_file.csv", submission_file_content_type: "text/csv", submission_file_file_size: 37, submission_file_updated_at: "2016-03-17 13:51:35"},
  {submission_id: 1, seq: 1, submission_file_file_name: "test_text_file.txt", submission_file_content_type: "text/plain", submission_file_file_size: 15, submission_file_updated_at: "2016-03-17 13:51:35"},
  {submission_id: 2, seq: 0, submission_file_file_name: "test_csv_file.csv", submission_file_content_type: "text/csv", submission_file_file_size: 37, submission_file_updated_at: "2016-03-17 13:52:00"},
  {submission_id: 2, seq: 1, submission_file_file_name: "test_pdf_file.pdf", submission_file_content_type: "application/pdf", submission_file_file_size: 8087, submission_file_updated_at: "2016-03-17 13:52:00"},
  {submission_id: 3, seq: 0, submission_file_file_name: "test_csv_file.csv", submission_file_content_type: "text/csv", submission_file_file_size: 37, submission_file_updated_at: "2016-03-17 13:53:29"},
  {submission_id: 3, seq: 1, submission_file_file_name: "test_pdf_file.pdf", submission_file_content_type: "application/pdf", submission_file_file_size: 8087, submission_file_updated_at: "2016-03-17 13:53:29"},
  {submission_id: 4, seq: 0, submission_file_file_name: "test_csv_file.csv", submission_file_content_type: "text/csv", submission_file_file_size: 37, submission_file_updated_at: "2016-03-17 14:20:35"},
  {submission_id: 4, seq: 1, submission_file_file_name: "test_text_file.txt", submission_file_content_type: "text/plain", submission_file_file_size: 15, submission_file_updated_at: "2016-03-17 14:20:35"},
  {submission_id: 5, seq: 0, submission_file_file_name: "test_csv_file.csv", submission_file_content_type: "text/csv", submission_file_file_size: 37, submission_file_updated_at: "2016-03-17 14:20:46"},
  {submission_id: 5, seq: 1, submission_file_file_name: nil, submission_file_content_type: nil, submission_file_file_size: nil, submission_file_updated_at: nil},
  {submission_id: 6, seq: 0, submission_file_file_name: "test_csv_file.csv", submission_file_content_type: "text/csv", submission_file_file_size: 37, submission_file_updated_at: "2016-03-17 14:42:11"},
  {submission_id: 6, seq: 1, submission_file_file_name: "test_pdf_file.pdf", submission_file_content_type: "application/pdf", submission_file_file_size: 8087, submission_file_updated_at: "2016-03-17 14:42:11"}
])
Timeline.create!([
  {competition_id: 2, seq: 0, event: "Start", event_time: "2016-03-01 13:50:00"},
  {competition_id: 2, seq: 1, event: "End", event_time: "2016-03-31 13:50:00"}
])
Topic.create!([
  {competition_id: 2, user_id: 1, topic: "A sticky topic", sticky: true, views: 0, posts_count: 0},
  {competition_id: 2, user_id: 1, topic: "A regular topic", sticky: false, views: 0, posts_count: 0}
])
Leaderboard.create!([
  {competition_id: 2, user_id: 1, username: "sean", team_id: nil, score: 0.9, entries: 3},
  {competition_id: 2, user_id: 2, username: "competitor", team_id: nil, score: 0.91, entries: 3}
])
