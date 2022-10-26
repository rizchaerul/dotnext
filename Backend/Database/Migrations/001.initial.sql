DROP
    schema if EXISTS public cascade;

CREATE schema if NOT EXISTS public;

CREATE TABLE
    blobs (
        id uuid PRIMARY key,
        filename text NOT NULL,
        created timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
        modified timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE
    users (
        id uuid PRIMARY key,
        blob_id uuid REFERENCES blobs,
        name text NOT NULL,
        email text NOT NULL UNIQUE,
        password text NOT NULL,
        created timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
        modified timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP
    );
