use movie_collection;
Create table actor(
act_id				integer			not null,
act_fname			char(20)		not null,
act_lname			char(20)		not null,
act_gender			char(1)			not null,
constraint 			act_idPk		primary key (act_id)
);


Create table movie_cast(
act_id				integer			not null,
mov_id				integer			not null,
role				char(30)		not null
);

Create table director(
dir_id				integer			not null,
dir_fname			char(20)		not null,
dir_lname			char(20)		not null,
constraint			dir_idPk		primary key (dir_id)
);

Create table movie_director(
dir_id				integer			not null,
mov_id				integer			not null
);

Create table movie(
mov_id				integer			not null,
mov_title			char(50)		null,
mov_year			integer			null,
mov_time			integer			null,
mov_lang			char(50)		null,
mov_dt_rel			date			null,
mov_rel_country		char(5)			null,
constraint			mov_idPk		primary key(mov_id)
);

Create table reviewer(
rev_id				integer			not null,
rev_name			char(50)		null,
constraint			rev_idPk		primary Key(rev_id)
);

Create table genres(
gen_id				integer			not null,
gen_tittle			char(30)		not null,
constraint			gen_idPk		primary key(gen_id)
);

Create table movie_genres(
mov_id				integer			not null,
gen_id				integer			not null
);

Create table rating(
mov_id				integer			null,
rev_id				integer			null,
rev_stars			integer			null,
num_o_ratings				integer			not null
);
