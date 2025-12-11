create table users(
    user_id bigint not null auto_increment primary key,
    name varchar(255) not null,
    email varchar(255) not null unique,
    password varchar(255) not null
);

create table projects(
    project_id bigint not null auto_increment primary key,
    name varchar(255) not null,
    user_id bigint not null,
    foreign key (user_id) references users(user_id)
);

create table tasks(
    task_id bigint not null auto_increment primary key,
    name varchar(255) not null,
    details varchar(255),
    created_at datetime not null,
    updated_at datetime not null,
    due_time datetime,
    priority varchar(50) not null,
    status varchar(50) not null,
    user_id bigint not null,
    project_id bigint not null,
    foreign key (user_id) references users(user_id),
    foreign key (project_id) references projects(project_id)
);
