-- create table taskStatus
CREATE TABLE taskStatus (
    taskStatusId INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    taskStatusLabel VARCHAR(50) NOT NULL
);

-- create table tasks
CREATE TABLE tasks (
    taskId INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    taskTitle VARCHAR(50) NOT NULL,
    taskDescription VARCHAR(4000) NULL,
    taskStatusId INT(11) NOT NULL,
    taskEmployeeNumber INT(11)
);

-- add foreign key constraints
ALTER TABLE tasks
  ADD FOREIGN KEY FK_TASKSTATUS(taskStatusId) REFERENCES taskstatus(taskStatusId);

ALTER TABLE tasks
  ADD FOREIGN KEY FK_TASKEMPLOYEENUMBER(taskEmployeeNumber) REFERENCES employees(employeeNumber);

-- insert taskstatus
INSERT INTO taskstatus (taskStatusLabel) VALUES ('To Be Done');
INSERT INTO taskstatus (taskStatusLabel) VALUES ('Doing');
INSERT INTO taskstatus (taskStatusLabel) VALUES ('Done');
INSERT INTO taskstatus (taskStatusLabel) VALUES ('Abandoned');

-- insert tasks
INSERT INTO tasks (
    taskTitle,
    taskStatusId,
    taskEmployeeNumber
)
VALUES (
    'Wash car',
    1,
    1088
);

INSERT INTO tasks (
    taskTitle,
    taskStatusId,
    taskEmployeeNumber
)
VALUES (
    'Clean windows',
    4,
    1088
);