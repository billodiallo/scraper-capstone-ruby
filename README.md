# Github Scraper
A Github Scraping Tool developed with Ruby and the Nokogiri gem


<!-- PROJECT SCRENSHOOT -->
![ruby-capstone2](https://user-images.githubusercontent.com/11162987/109022267-b8c11680-76cc-11eb-9599-5cbc255b4a4b.PNG)
![ruby-capstone3](https://user-images.githubusercontent.com/11162987/109022276-b9f24380-76cc-11eb-85f1-1ba143e6ecf8.PNG)
![ruby-capstone1](https://user-images.githubusercontent.com/11162987/109022278-ba8ada00-76cc-11eb-80ff-392523aebcc2.PNG)
![![test2-capstone](https://user-images.githubusercontent.com/11162987/109165272-69dab600-778c-11eb-93b3-5e1500091670.PNG)

<p align="center">
  <a href="https://github.com/billodiallo/scraper-capstone-ruby">
  </a>

  <h1 align="center">My Github Scraper</h1> </p>


<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* [Built With](#built-with)
* [Testing](#testing)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)


<!-- ABOUT THE PROJECT -->
## About The Project

This is Github Scrapping Tool built with ruby. This Tools is built as a capstone project for completing one of Microverse's Main Technical Curriculum sections.

[![Product Name Screen Shot][product-screenshot]][screenshot-url]

<!-- ABOUT THE PROJECT -->
## Installation

To use this scraper this is what you need to:
* Have ruby installed in your computer
* [Download](https://github.com/billodiallo/scraper-capstone-ruby.git) or clone this repo:
  - Clone with SSH:
  ```
   https://github.com/billodiallo/scraper-capstone-ruby.git
  ```
- Clone with HTTPS
  ```
    github.com/billodiallo/scraper-capstone-ruby.git
  ```
* `cd` into `scraper-capstone-ruby` directory and run `bundle install`
* Finally, run `bin/main` in your terminal.

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
  followers: xxxxxxx
  following: xxxxxx
  ----------------------------------
```
Then you will be prompted to enter a category name to see a full list of its contents. For instance enter `repositories` or `stars`, or  `followers` or `following`  to get a list of those scrapped categories. This will continue until you exit the program by typing `'q'` in the terminal and pressing Enter.

### Built With
This project was built using these technologies.
* Ruby
* Rspec
* Nokogiri gem
* Colorize gem

### Testing
If you wish to test it. Install `Rspec`with `gem install rspec`. Clone this repo to your local machine, cd into github-scraper directory and run `rspec`

<!-- LIVE VERSION -->
### LIVE DEMO VIDEO

https://www.loom.com/share/7c3fe4266fe14804bf0382caa08424a5


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

This project is [MIT](LICENSE) licensed.

