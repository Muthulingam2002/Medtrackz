class Article {
  String image;
  String title;
  String description;
  String time;
  String author;
  String category;
  String authorImg;

  Article({
    this.image,
    this.title,
    this.description,
    this.time,
    this.author,
    this.category,
    this.authorImg,
  });
}

final List<Article> trendingNews = [
  // Article(
  //   category: 'politics',
  //   title: 'It has to stop',
  //   description:
  //       'Donald Trump has verbally attacked Michigan\'s governor Gretchen Whitmer, despite warnings about the effect his words can have.During a rally in the state, Mr Trump called on Ms Whitmer, a Democrat, to axe the remaining restrictions aimed at limiting the spread of the coronavirus.',
  //   time: '1hr ago',
  //   author: 'Sky News',
  //   image: 'images/blog1yoga.jpeg',
  //   authorImg: 'images/medtracks.png',
  // ),
  // Article(
  //   category: 'Entertainment',
  //   title: 'JRE on Spotify',
  //   description:
  //       'Joe Rogan—America’s most popular podcaster—has officially debuted on Spotify. The longtime comedian and mixed martial arts announcer made “The Joe Rogan Experience” available to Spotify subscribers on Tuesday.',
  //   time: '2hr ago',
  //   author: 'Spotify',
  //   image: 'images/medtracks.png',
  //   authorImg: 'images/medtracks.png',
  // ),
  // Article(
  //   category: 'Sports',
  //   title: 'Jadon Sancho Transfer News',
  //   description:
  //       'Jadon Sancho transfer rumors are growing as we move towards the winter break. Despite Borussia Dortmund’s fans’ feelings, big European clubs like Paris Saint-Germain, Real Madrid, Liverpool, and Manchester United are all interested in the services of the 19 years old English international.According to Marca.com, Real Madrid and Liverpool joined the race to sign the talented Borussia Dortmund player in the summer. Manchester United’s interest in the young forward is a little bit older.',
  //   time: '3hr ago',
  //   author: 'Sky News',
  //   image: 'images/medtracks.png',
  //   authorImg: 'images/medtracks.png',
  // ),
  // Article(
  //   category: 'politics',
  //   title: 'Biden anti-trans violence',
  //   description:
  //       'Democratic presidential nominee Joe Biden called the violence against transgender and gender-nonconforming people an “epidemic that needs national leadership” and accused the Trump administration of fueling “the flames of transphobia.”',
  //   time: '1hr ago',
  //   author: 'Sky News',
  //   image: 'images/medtracks.png',
  //   authorImg: 'images/medtracks.png',
  // ),
];

final List<Article> forYou = [
  Article(
    category: 'Exercise',
    title: 'Exercise for COVId-19',
    description:
        'A normal level of oxygen is usually 95% or higher. Some people with chronic lung disease or sleep apnea can have normal levels around 90%. The “SpO2” reading on a pulse oximeter shows the percentage of oxygen in someone’s blood. If your home SpO2 reading is lower than 95%, call your health care provider.',
    time: '30min ago',
    author: 'Sky News',
    image: 'images/exercise.png',
    authorImg: 'images/medtracks.png',
  ),
  Article(
    category: 'Yoga',
    title: 'Yoga for COVID-19',
    description:
        'Joe Rogan—America’s most popular podcaster—has officially debuted on Spotify. The longtime comedian and mixed martial arts announcer made “The Joe Rogan Experience” available to Spotify subscribers on Tuesday.',
    time: '2hr ago',
    author: 'Spotify',
    image: 'images/yogapose.png',
    authorImg: 'images/medtracks.png',
  ),
  Article(
    category: 'Vaccination',
    title: 'Covid 19 Vaccine ',
    description:
        'There are four types of vaccines in clinical trials: whole virus, protein subunit, viral vector and nucleic acid (RNA and DNA), each of which protects people, but by producing immunity in a slightly different way.' ,
    time: '3hr ago',
    author: 'Sky News',
    image: 'images/vaccinate.png',
    authorImg: 'images/vaccinate.png',
  ),
  Article(
    category: 'Oxygen Cyclinder',
    title: 'Availability of Oxygen Cyliner',
    description:
        'An Oxygen Cylinder is a high-pressure, non-reactive, seamless tempered steel container for compressed gas (O2) used for medical, therapeutic or diagnostic purposes. It gives the provision of supplemental oxygen to maintain aerobic metabolism during patient transport. We deal in different capacities depending upon the requirements of the patient.',
    time: '1hr ago',
    author: 'Sky News',
    authorImg: 'images/medtracks.png',
    image: 'images/oxygencyclinder.png',
  ),
];
