# Building Fotosynthesis Magazine with Rails

## About the project

In this project, I built a comunity Blog magazine specialized in Plants, ecological farming, and home gardening.

## Use cases

- Anyone can visualize the landing page which contains the most rated articles headers
- A user should sign-up and log-in into the application to be able to read and vote for articles
- A signed-up user could write and publish articles and could create for them a new categories
- A logged-in user could access to a display of categories ordered by priority
- A logged-in user could access to a display of any category articles sorted by most recent


## Demo:

Home page with two scenarios : When user is Loged-in and when not:
<br>

<img height="300" src="./app/assets/images/publicHome.png"><span> </span><img height="300" src="./app/assets/images/LogedinUserHome.png">
<br><br>

## Built with:

<a href="#" target="_blank"><img height="40" src="https://www.vectorlogo.zone/logos/ruby-lang/ruby-lang-horizontal.svg"></a>
<a href="#" target="_blank"><img height="40" src="https://www.vectorlogo.zone/logos/git-scm/git-scm-ar21.svg"></a>
<a href="#" target="_blank"><img height="40" src="https://www.vectorlogo.zone/logos/getbootstrap/getbootstrap-icon.svg"></a>
<a href="#" target="_blank"><img height="40" src="https://www.vectorlogo.zone/logos/w3_html5/w3_html5-ar21.svg"></a>

- Framework/API : ``Ruby on Rails``, ``Bulma``, ``Bootstrap``
- Langage: ``Ruby``
- Text-editor: ``Visual Studio Code``

## Somme useful Gems added:

- Devise
- bulma-rails
- gravatar_image_tag
- simple_form
- rubocop

## Data Models

<img src="docs/erd.jpeg">

## Development : Getting started

To get a local copy of the repository please run the following commands on your terminal:

```
$ git clone git@github.com:CalyCherkaoui/lifestyle_capstone.git
$ cd gourmet_blog
$ git checkout development
$ bundle install --without production
$ yarn install --check-files
$ rails db:create
$ rails db:migrate
$ rails server
```
In your browser's adress field, type : http://localhost:3000

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

- Hat tip to anyone whose code was used
- Design based on the work of [Nelson Sakwa](https://www.behance.net/sakwadesignstudio) published in [Behance.net](https://www.behance.net/gallery/14554909/liFEsTlye-Mobile-version)

## 📝 License

All source codeis available jointly under the MIT License.
See [MIT licence]() for details.
