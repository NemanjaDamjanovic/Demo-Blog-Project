<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="[https://github.com/laravel/framework/workflows/tests/badge.svg](https://ibb.co/CzFVHPS)" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Demo Blog Project

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

*For testing, admin credentials are*
**Username: *NemanjaDamjanovic***
**Password: *password***



