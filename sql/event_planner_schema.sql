-- schema for event_planner

PRAGMA foreign_keys = ON; 

create table Event_date(
    Date text primary key,
    Name text not null
);

create table Event(
    Event_id integer primary key,
    Date text not null,
    Description text,
    foreign key (Date) references Event_date(Date)
);