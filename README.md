# Github Scraper
A Github Scraping Tool developed with Ruby and the Nokogiri gem

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]


<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/billodiallo/scraper-capstone-ruby">
    <img src="" alt="Logo" width="80" height="80">
  </a>

  <h1 align="center">My Github Scraper</h1>


<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
  * [Testing](#testing)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)
* [License](#license)

<!-- ABOUT THE PROJECT -->
## About The Project

This is Github Scrapping Tool built with ruby. This Tools is built as a capstone project for completing one of Microverse's Main Technical Curriculum sections.

[![Product Name Screen Shot][product-screenshot]][screenshot-url]

<!-- ABOUT THE PROJECT -->
## Installation

To use this scraper this is what you need to:
* Have ruby installed in your computer
* [Download]() or clone this repo:
  - Clone with SSH:
  ```
   https://github.com/billodiallo/scraper-capstone-ruby.git
  ```
  - Clone with HTTPS
  ```
    github.com/billodiallo/scraper-capstone-ruby.git
  ```
* `cd` into `scraper-capstone-ruby` directory and run `bundle install`
* Finally, run `bin/main.rb` in your terminal.

## How to use
When you first run this github scraping tool it begins by showing you the summary info output format

```
   Github User
  -------------------------------  
  Name: xxxxxx (xxxxxxx)  
  Bio: xxxxxx  
  Work: xxxxxx  
  Location: xxxxxx  
  Website: xxxxxx  
  ---------------------------------
  pinned Repositories
  ---------------------------------
  1. xxxxxx
  2. xxxxxx
  3. xxxxxx
  4. xxxxxx
  5. xxxxxx
  6. xxxxxx
  --------------------------------
```

After this, you are prompted to enter a valid github username. Then it returns the above output format with all the information filled in.

```
  Categories
  ---------------------------------
  repositories: xxxxxx
  stars: xxxxxx
  followers: xxxxxx
  following: xxxxxx
  ----------------------------------
```
Then you will be prompted to enter a category name to see a full list of its contents. For instance enter `repositories` or `stars` to get a list of those scrapped categories. This will continue until you exit the program by typing `'q'` in the terminal and pressing Enter.

### Built With
This project was built using these technologies.
* Ruby
* Rspec
* Nokogiri gem
* Colorize gem

### Testing
If you wish to test it. Install `Rspec`with `gem install rspec`. We used `rspec 3.9.1` but any version not older than `3.0`should work fine. Clone this repo to your local machine, cd into github-scraper directory and run `rspec`

<!-- LIVE VERSION -->
## Live version

## Video Demo

<!-- CONTACT -->
## Contact

👤 Billo Dallio

- GitHub: [@billodiallo](https://github.com/billodiallo)
- Twitter: [@BilloDi83547008](https://twitter.com/BilloDi83547008)

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [Ruby Documentation](https://www.ruby-lang.org/en/documentation/)


## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.

