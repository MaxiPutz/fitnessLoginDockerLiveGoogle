CREATE TABLE users (
  entrynumber serial PRIMARY KEY,
  username VARCHAR(50),
  password VARCHAR(50),
  clientid VARCHAR(50),
  clientsecret VARCHAR(50)
);

CREATE TABLE metadata (
  entrynumber serial PRIMARY KEY,
  id VARCHAR(50),
  sport VARCHAR(50),
  startTime TIMESTAMP,
  averagePower real,
  averageSpeed real,
  averageHearRate real,
  totalTime real,
  totalDistance real
);

CREATE TABLE users_metadata (
  id serial PRIMARY KEY,
  users_entrynumber integer,
  metadata_entrynumber integer,
  synccount integer DEFAULT 0
);

CREATE TABLE users_workoutdata (
  id serial PRIMARY KEY,
  users_entrynumber integer,
  workoutdata_entrynumber integer,
  syncCount integer DEFAULT 0
);

CREATE TABLE public.workoutdata (
  rowentry serial primary key not Null,
  id varchar(15) NOT NULL,
  lat double precision,
  "long" double precision,
  "timerTime" real,
  power real DEFAULT 0,
  speed real DEFAULT 0,
  "heartRate" real DEFAULT 0
);