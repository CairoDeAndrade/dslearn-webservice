INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://live.staticflickr.com/65535/51922705627_5f861f6b15_b.jpg', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('HMTL trail', 'Main trail of the course', 1, 'https://live.staticflickr.com/65535/51922705627_5f861f6b15_b.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Clear your doubt', 2, 'https://live.staticflickr.com/65535/51922705627_5f861f6b15_b.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Exclusive lives to the class', 3, 'https://live.staticflickr.com/65535/51922705627_5f861f6b15_b.jpg', 0, 1);


INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter 1', 'Basic HTML', 1, 'https://live.staticflickr.com/65535/51922705627_5f861f6b15_b.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter 2', 'Intermediate HTML', 2, 'https://live.staticflickr.com/65535/51922705627_5f861f6b15_b.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Chapter 3', 'Advanced HTML', 3, 'https://live.staticflickr.com/65535/51922705627_5f861f6b15_b.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enrollment_Instant, refund_Instant, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2021-11-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enrollment_Instant, refund_Instant, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2021-11-20T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Class 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Support material 1', 'https://www.youtube.com/watch?v=W1ylqO7uU4M&list=RDMMXfuSmUkqqyI&index=4');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Class 2', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Support material 2', 'https://www.youtube.com/watch?v=W1ylqO7uU4M&list=RDMMXfuSmUkqqyI&index=4');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Class 3', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Support material 3', 'https://www.youtube.com/watch?v=W1ylqO7uU4M&list=RDMMXfuSmUkqqyI&index=4');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Task 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Make a cool HTML project', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('First task feedback: Congrats!', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Second task feedback: Congrats!', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Third task feedback: Congrats!', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
