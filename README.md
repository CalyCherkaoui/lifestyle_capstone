# Building Fotosynthesis Magazine with Rails

## About the project:

In this project, I built a comunity Blog magazine specialized in Plants, ecological farming, and home gardening.
This is the Capstone project for the end Ruby On Rails Module in [Microverse](https://www.microverse.org/) currriculum

This project project was built following the specifications , and user cases given by Microverse

[Read the projects specifications](https://www.notion.so/Lifestyle-articles-b82a5f10122b4cec924cd5d4a6cf7561)


## Table of content:

- [About the project](#about-the-project)
- [Presentation/Demo](#presentation)
- [Built with](#built-with)
- [Dependencies](#dependencies)
- [Getting started](#getting-started)
- [Deployment](#deployment)
- [Author](#author)
- [Contributing](#contributing)
- [Acknowledgments](#acknowledgments)
- [License](#License)



## Presentation/Demo:

- Video-presentation of the project
[Deom-video]()


- Main views screenshots:
<br>

<img height="300" src="./app/assets/images/publicHome.png"><span> </span><img height="300" src="./app/assets/images/article.png">
<br>
<img height="300" src="./app/assets/images/signup.png"><span> </span><img height="300" src="./app/assets/images/category.png">
<br>
<img height="300" src="./app/assets/images/user.png"><span> </span><img height="300" src="./app/assets/images/editarticle.png">


## Built with:

  <a href="https://www.ruby-lang.org/en/documentation/"><img width="10%" src="https://www.vectorlogo.zone/logos/ruby/ruby-ar21.svg" alt="Ruby"></a>
  <a href="https://guides.rubyonrails.org/"><img width="50px" src="https://guides.rubyonrails.org/images/favicon.ico" alt="Rails"></a>
  <a href="https://github.com/"><img width="5%" src="https://i.giphy.com/media/KzJkzjggfGN5Py6nkT/200.webp" alt="GitHub"></a>
  <a href="#"><img width="60px" src="https://cdn.svgporn.com/logos/sass.svg"></a>
  <a href="#"><img width="10%" src="https://media.giphy.com/media/kH6CqYiquZawmU1HI6/giphy.gif"></a>
  <a href="#"><img width="10%" src="https://www.vectorlogo.zone/logos/heroku/heroku-ar21.svg"></a>
  <a href="#"><img width="5%" src="https://i.giphy.com/media/IdyAQJVN2kVPNUrojM/200.webp"></a>
  <a href="#"><img width="30px" src="https://cdn.svgporn.com/logos/html-5.svg"></a>
  <a href="#"><img width="30px" src="https://cdn.svgporn.com/logos/css-3.svg"></a>
  <a href="#"><img width="50px" src="https://img.icons8.com/bubbles/2x/console.png"></a>
  <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript"><img width="5%" src="https://media.giphy.com/media/ln7z2eWriiQAllfVcn/giphy.gif" alt="Javascript"></a>
  <a href="#"><img width="50px" src="https://www.vectorlogo.zone/logos/amazon_aws/amazon_aws-ar21.svg"></a>


## Dependencies:

Additional Gems and dependencies used in this web application:

### In Development:
database:
- Postgresql

### In Tests:
database:
- Postgresql

Testing tool:
- Rspec

Helpers:
- Capybara
- Shoulda matchers
- Factories
- Faker
- Database_cleaner

### In Production:
database:
- Postgresql

## Linters:
- For Ruby: Rubocop
- For Scss/css : Styleling

## Data Models

<br>

<img src="docs/diagram.png">

<br><br>

## Getting started

To get a local copy of the repository please run the following commands on your terminal:

```
$ git clone git@github.com:CalyCherkaoui/lifestyle_capstone.git
$ cd lifestyle_capstone
$ git checkout development
$ bundle install --without production
$ yarn install --check-files
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

Start server with:
```
$ sudo service postgresql restart
$ rails server
```
In your browser's adress field, type : http://localhost:3000

## Run tests
```
$ rpsec --format documentation
```

## Deployment:

This web-application was deployed with Heroku and AWS S3 (for Active storage)

Link to the webpage : 

## Author

👤 **Houda Cherkaoui**

- Github: [@CalyCherkaoui](https://github.com/CalyCherkaoui)
- Twitter: [@Houda59579688](https://twitter.com/Houda59579688)
- Linkedin: [Houda-Cherkaoui](https://www.linkedin.com/in/houda-cherkaoui-64106395/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Design based on the work of [Nelson Sakwa](https://www.behance.net/sakwadesignstudio) published in [Behance.net](https://www.behance.net/gallery/14554909/liFEsTlye-Mobile-version)
- Hat tip to [stackoverflow](https://stackoverflow.com) comunity.
- Hat tip to [Microverse](https://www.microverse.org/) TSE for Code Review
- Hat tip to anyone whose code was used

## 📝 License

All source codeis available jointly under the MIT License.
See [MIT licence]() for details.
