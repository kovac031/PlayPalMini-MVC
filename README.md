# PlayPalMini-MVC
- C#, SQL, JavaScript
- ASP.NET MVC
- .NET Framework 4.7.2
- Autofac, Autofac.Mvc5
- Entity Framework 6.4.4
- PagedList, PagedList.Mvc

> MVC app, connection to SQL database with Entity Framework.

> PlayPalMini is a mini version of a group task which was the final exam of an intensive 255-hour beginner back-end dev course. The original was a 4 man project called PlayPal, an MVC application where the database theme was about renting board games. PlayPalMini is a simplified version of that, but intended to cover all the same features.

> The goal of PlayPalMini-MVC was to learn how to do all parts of that project on my own.

# Features, challenges and learning points
- multilayer architecture - controller, service, repository, data access layer
- dependency injection, Autofac
- using Entitiy Framework to connect to database
- full CRUD for board games, reviews and users
- paging, sorting, filtering of lists, using ViewBag
- DTO models and View models, manual mapping
- using MVC Razor pages, styling with inline CSS, styling with JavaScript
- drop down menu
- using partial Views, controller methods for partial Views, using Java Script and Ajax to achieve paging and sorting in partial Views
- form based authentication and role based authorization
- limiting access based on user roles
- TempData confirmation messages
- retrieving authenticated user data to dynamically map username, role, Id if/where needed (e.g. UpdatedBy)

# Some screenshots:
Home page:

![screenshot](https://github.com/kovac031/PlayPalMini-MVC/blob/main/home-page-1.jpg)

![screenshot](https://github.com/kovac031/PlayPalMini-MVC/blob/main/home-page-2.jpg)

List page with search box, sorting and paging implemented (for non-authenticated user):

![screenshot](https://github.com/kovac031/PlayPalMini-MVC/blob/main/list-page.jpg)

Login page:

![screenshot](https://github.com/kovac031/PlayPalMini-MVC/blob/main/login-page.jpg)

Details page of one board game ... 
- showing drop down menu of authenticated user,
- implemented partial view for leaving a new review and confirmation message,
- implemented a partial view for listing all reviews for just this board game, can be sorted ASC/DESC and has paging,
- the authenticated user can see details, edit or delete reviews they are the author of, but not others:

![screenshot](https://github.com/kovac031/PlayPalMini-MVC/blob/main/details-page.jpg)
