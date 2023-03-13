## Demo Blog Project

<img src="https://live.staticflickr.com/65535/52745588023_12304c8db3_w.jpg" alt="Path Of Developer Logo" width="250">

## Technologies used:

* [PHP](https://www.php.net/)
* [Laravel](https://laravel.com/)
* [HTML](https://en.wikipedia.org/wiki/HTML)
* [CSS(Tailwind)](https://en.wikipedia.org/wiki/CSS)
* [JavaScript](https://www.javascript.com/)

### Installation

Clone repository, install the dependencies, and setup your .env file.

```
git clone git@github.com:NemanjaDamjanovic/Demo-Blog-Project.git blog
composer install
cp .env.example .env
```
Create database.
```
php artisan db
create database blog
```

When done, run migradtion and seeder.
```
php artisan migrate --seed
```


## About

The Demo Blog Project consists of posts, each of which has an author and a category. If a user is signed in, they can comment on a post; otherwise, they must register or log in to their existing account.

There is currently only one administrator, who can add new posts, edit existing posts, and delete posts.

### Blog content and functionality.

- [Index Page]
- [Login Page & Form]
- [Register Page & Form]
- [User Page]
- [Comment Section]
- [Search by Category]
- [Search by Custom Word]
- [Admin Page]
- [Adding New Post]
- [Edit Existing Post]
- [Delete Post]


**Database dumb file is included in** ***db_dump*** **folder.

*For testing, admin credentials are:*
* [**Username: *NemanjaDamjanovic***]
* [**Password: *password***]

<div class="border border-top">
<h3><i>Wish you Happy Testing and Coding!</i></h3>
<div>
