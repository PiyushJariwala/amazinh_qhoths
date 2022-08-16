import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List inspiration_quotes = [
    "When you have a dream, you’ve got to grab it and never let go.",
    "Nothing is impossible. The word itself says ‘I’m possible!",
    "There is nothing impossible to they who will try.",
    "The bad news is time flies. The good news is you’re the pilot",
    "Life has got all those twists and turns. You’ve got to hold on tight and off you go.",
    "Keep your face always toward the sunshine, and shadows will fall behind you.",
    "Be courageous. Challenge orthodoxy. Stand up for what you believe in. When you are in your rocking chair talking to your grandchildren many years from now, be sure you have a good story to tell.",
  ];

  List motivational_quotes = [
    "You’ve gotta dance like there’s nobody watching, love like you’ll never be hurt, sing like there’s nobody listening, and live like it’s heaven on earth",
    "Fairy tales are more than true: not because they tell us that dragons exist, but because they tell us that dragons can be beaten.",
    "Everything you can imagine is real.",
    "When one door of happiness closes, another opens; but often we look so long at the closed door that we do not see the one which has been opened for us.",
    "Do one thing every day that scares you.",
    "It’s no use going back to yesterday, because I was a different person then.",
    "Smart people learn from everything and everyone, average people from their experiences, stupid people already have all the answers.",
    "Do what you feel in your heart to be right – for you’ll be criticized anyway.",
    "Happiness is not something ready made. It comes from your own actions.",
    "Whatever you are, be a good one.",
  ];

  List positive_quotes = [
    "Keep your face always toward the sunshine—and shadows will fall behind you.",
    "Extraordinary things are always hiding in places people never think to look.",
    "Setting goals is the first step in turning the invisible into the visible.",
    "You can have it all. Just not all at once.",
    "Say something positive, and you’ll see something positive",
    "All you need is the plan, the road map, and the courage to press on to your destination.",
    "Train your mind to see the good in every situation.",
    "If you can stay positive in a negative situation, you win.",
    "Stay positive. Better days are on their way.",
    "Only in the darkness can you see the stars.",
  ];

  List success_quotes = [
    "Success is a journey, not a destination.",
    "Success is where preparation and opportunity meet.",
    "Success is how high you bounce when you hit bottom.",
    "Success is the progressive realization of predetermined, worthwhile, personal goals.",
    "Success is walking from failure to failure with no loss of enthusiasm.",
    "When it comes to success, there are no shortcuts.",
  ];

  List titels = [
    "Inspiration",
    "Motivational",
    "Positive",
    "Success",
  ];
  List titels_images = [
    "https://images.unsplash.com/photo-1652489230911-702248f19631?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=800",
    "https://images.unsplash.com/photo-1649605184337-c4dc52c6e32e?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8Ym84alFLVGFFMFl8fGVufDB8fHx8&auto=format&fit=crop&w=800",
    "https://images.unsplash.com/photo-1652841611360-2deac1ff384c?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE5fGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800",
    "https://images.unsplash.com/photo-1652267990738-e78a61d72832?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDU3fGJvOGpRS1RhRTBZfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800",
  ];

  List author = [
    "apj abdul kalam",
    "mahatma gandhi",
    "swami vivekananda",
    "chanakya",
  ];

  List apj = [
    "You have to dream before your dreams can come true.",
    "A dream is not that which you see while sleeping, it is something that does not let you sleep.",
    "You should not give up and we should not allow the problem to defeat us.",
    "If you want to shine like a sun, first burn like a sun.",
    "I was willing to accept what I couldn’t change.",
    "All of us do not have equal talent. But, all of us have an equal opportunity to develop our talents.",
    "Man needs difficulties in life because they are necessary to enjoy success.",
    "Don’t take rest after your first victory because if you fail in second, more lips are waiting to say that your first victory was just luck.",
    "Let us sacrifice our today so that our children can have a better tomorrow",
    "I am not handsome but I can give my hand to someone who needs help… Because beauty is required in the heart, not in face…",
    "The best brains of the nation may be found on the last benches of the classroom.",
    "Excellence happens not by accident. It is a process.",
    "Winners are not those who never fail but those who never quit.",
    "Two rules for a peaceful life: Depression in failure should never go to heart, and ego in success should never go to the brain.",
    "Luxury and Lies have huge maintenance costs. But Truth and Simplicity are self-maintained without any cost.",
    "Dream, dream, dream. Dreams transform into thoughts and thoughts result in action.",
    "To succeed in your mission, you must have single-minded devotion to your goal.",
    "If you fail, never give up because Fail means “First Attempt In Learning",
    "“Creativity is seeing the same thing but thinking differently.”",
    "“Failure will never overtake me if my determination to succeed is strong enough.”",
  ];

  List mahatmagandhi = [
    "“The future depends on what we do in the present.”",
    "“It’s easy to stand in the crowd but it takes courage to stand alone.”",
    "“Our greatest ability as humans is not to change the world, but to change ourselves.”",
    "“Service without humility is selfishness and egotism.”",
    "“It does not require money to live neat, clean, and dignified.”",
    "“Relationships are based on four principles: respect, understanding, acceptance and appreciation.”",
    "“Hate the sin, love the sinner.”",
    "“It’s easy to stand with the crowd. It takes courage to stand alone.”",
    "“Strength does not come from physical capacity. It comes from an indomitable will.”",
    "“Strength does not come from winning. When you go through hardships and decide not to surrender, that is strength.”",
    "“The enemy is fear. We think it is hate; but, it is fear.”",
    "“Seek not greater wealth, but simpler pleasure; not higher fortune, but deeper felicity.”",
    "“Our greatest ability as humans is not to change the world, but to change ourselves.”",
  ];

  List sawamiVivekandan = [
    "“Take risks in your life, If you win, you can lead! If you loose, you can guide!",
    "“Strength is life; weakness is death.”",
    "“Experience is the only teacher we have. we may talk and reason all our lives, but we shall not understand a word of truth.”",
    "“If you think yourselves strong, strong you will be.”",
    "“Take up one idea, make that one idea your life. Think of it, dream of it, Live on that idea let the brain, muscles, nerves, every part of your body be full of that idea, and just leave every other idea alone. This is the way to success.”",
    "“Stand up, be bold, and take the blame on your own shoulders. Do not go about throwing mud at other; for all the faults you suffer from, you are the sole and only cause.”",
    "“Meditation can turn fools in to sages but unfortunately fools never meditate.”",
    "“Learn everything that is good from others, but bring it in, and in your own way adsorb it; do not become others.”",
    "“In a conflict between the heart and the brain, follow your heart.”",
    "“That man has reached immortality who is disturbed by nothing material.”",
    "“You should work like a master and not as a slave; work incessantly, but do not do a slave’s work.”",
    "“Whatever you believe, that you will be, If you believe yourselves to be ages, ages you will be tomorrow. There is nothing to obstruct you.”",
    "“If i love myself despite my infinite faults, how can i hate anyone at the glimpse of a few faults”..!",
    "“You cannot believe in god until you believe in yourself.”",
    "“All power is within you. You can do anything and everything. Believe in that. Do not believe that you are weak; do not believe that you are half-crazy lunatics, as most of us do nowadays. Stand up and express the divinity within you.”",
    "“You are the creator of your own destiny.”",
  ];

  List chankya = [
    "“He who is overly attached to his family members, experiences fear and sorrow, for the root of all grief is attachment. Thus one should discard attachment to be happy.”",
    "“The biggest guru-mantra is: never share your secrets with anybody. It will destroy you.”",
    "“One who can’t determine his goals; cannot win.”",
    "“Test a servant while in the discharge of his duty, a relative difficulty, a friend in adversity, and a wife is misfortune.”",
    "“Avoid him who talks sweetly before you but tries to ruin you behind your back, for he is like a pitcher full of poison with milk on top.”",
    "“Even if a snake is not poisonous, it should pretend to be venomous.”",
    "“Before you start some work always ask yourselves three questions why I am doing it, what the results might be and will I be successful. Only when you think deeply and find satisfactory answers to these questions, go ahead.”",
    "“Just as a mirror reflects as a mans face his personality is reflected in his choice of friends. One must always be careful in forming friendships and acquaintances, for one’s friends, are in a way, an extension of one’s inner inclinations and tendencies.”",
    "“A man is great by deeds, not by birth.”",
    "“Education is the best friend. An educated person is respected everywhere. Education beats the beauty and the youth.”",
    "“Knowledge is lost without putting it into practice; a man is lost due to ignorance; an army is lost without a commander; and a woman is lost without a husband.”",
    "“Once you start working on something don’t be afraid of failure and don’t abandon it . People who work sincerely are the happiest.”",
    "“As soon as the fear approaches near, attack and destroy it.”",
    "“Never make friends with people who are above or below you in status . Such friendships will never give you any happiness”",
  ];

  List featuer = [
    "Love",
    "Sad",
    "Famous",
    "Inspiration",
  ];

  List love_quotes = [
    "Continue to share your heart with people even if it has been broken.",
    "Love is such a powerful force. It’s there for everyone to embrace-that kind of unconditional love for all of humankind. That is the kind of love that impels people to go into the community and try to change conditions for others, to take risks for what they believe in.",
    "To love is to recognize yourself in another.",
    "To be fully seen by somebody, then, and be loved anyhow - this is a human offering that can border on miraculous.",
    "Love isn't something natural. Rather it requires discipline, concentration, patience, faith, and the overcoming of narcissism. It isn't a feeling, it is a practice.",
    "There is always some madness in love. But there is also always some reason in madness.",
    "There's all kinds of reasons that you fall in love with one person rather than another: Timing is important. Proximity is important. Mystery is important.",
    "Passion makes the world go 'round. Love just makes it a safer place.",
    "I believe in love. I think it just hits you and pulls the rug out from underneath you and, like a baby, demands your attention every minute of the day.",
    "When you find that one that's right for you, you feel like they were put there for you, you never want to be apart.",
  ];

  List sad = [
    "I’m full of pain but I wake up every morning and I’m smiling.",
    "I can’t wait for that day when I can finally be at peace and not feel so much pain in me.",
    "We all create fictions to hide our pain.",
    "Pain is temporary but the person who hurt you is permanently never going to change, move on.",
    "The prettiest smiles hide the deepest secrets. The prettiest eyes have cried the most tears. And the kindest hearts have felt the most pain.",
    "The pain never really goes away; you just elevate and get used to it by growing stronger.",
    "People who laugh more are able to tolerate pain better, both physical and emotional.",
    "Failure gave me strength. The pain was my motivation.",
    "Don’t ignore the lessons of pain nor walk the same path again, or it may happen again. Strive to preserve your new-found peace.",
  ];

  List famous = [
    "Excellence happens not by accident. It is a process.",
    "Setting goals is the first step in turning the invisible into the visible.",
    "Don’t take rest after your first victory because if you fail in second, more lips are waiting to say that your first victory was just luck.",
    "Nothing is impossible. The word itself says ‘I’m possible!",
    "“It does not require money to live neat, clean, and dignified.”",
    "“Once you start working on something don’t be afraid of failure and don’t abandon it . People who work sincerely are the happiest.”",
    "“Just as a mirror reflects as a mans face his personality is reflected in his choice of friends. One must always be careful in forming friendships and acquaintances, for one’s friends, are in a way, an extension of one’s inner inclinations and tendencies.”",
  ];

  List happy =[
    "Get busy living or get busy dying.",
    "“You only live once, but if you do it right, once is enough.”",
    "Many of life’s failures are people who did not realize how close they were to success when they gave up.",
    "If you want to live a happy life, tie it to a goal, not to people or things.",
    "“Never let the fear of striking out keep you from playing the game.”",
    "“Money and success don’t change people; they merely amplify what is already there.”",
  ];

  List category = [
    "happpness",
    "Success",
    "love",
    "chanakya",
  ];

  List<Color> colors1 = [
    Colors.amber.shade300,
    Colors.blue.shade300,
    Colors.orangeAccent.shade200,
    Colors.green.shade300,
  ];

  List<Color> colors2 = [
    Colors.tealAccent.shade200,
    Colors.pinkAccent.shade200,
    Colors.red.shade300,
    Colors.lightGreenAccent.shade200,
  ];

  List<Color> colors3 = [
    Colors.cyan.shade300,
    Colors.brown.shade200,
    Colors.indigo.shade300,
    Colors.blue.shade200,
  ];

  List quotes_list = [];
  List quotes_list1 = [];
  List quotes_list2 = [];
  List quotes_list3 = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    quotes_list = [
      inspiration_quotes,
      motivational_quotes,
      positive_quotes,
      success_quotes,
    ];

    quotes_list1 = [
      apj,
      mahatmagandhi,
      sawamiVivekandan,
      chankya,
    ];

    quotes_list2 = [
      love_quotes,
      sad,
      famous,
      inspiration_quotes,
    ];

    quotes_list3 = [
      happy,
      success_quotes,
      love_quotes,
      chankya,
    ];

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Amazing Quotes"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              AppBar(
                title: Text("Amazing Quotes"),
                centerTitle: true,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/faovritscreen');
                },
                child: Card(
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Favorites",style: TextStyle(color: Colors.black,fontSize: 20),),
                        Icon(Icons.star),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/faovritscreen');
                },
                child: Card(
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    color: Colors.white,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Readed",style: TextStyle(color: Colors.black,fontSize: 20),),
                        Icon(Icons.done_all),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 225,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://static.parade.com/wp-content/uploads/2020/01/stay-positive-quotes.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Most Popular",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: titels.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 120,
                        mainAxisExtent: 125,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) => Container(
                      height: 100,
                      width: 120,
                      margin: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              List l1 = [];
                              l1.add(titels[index]);
                              l1.add(quotes_list[index]);
                              Navigator.pushNamed(context, '/fullscreen',
                                  arguments: l1);
                            },
                            child: Container(
                              height: 90,
                              width: double.infinity,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "${titels_images[index]}",
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Text(
                            "${titels[index]} Quotes",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Quotes by Category",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Container(
                        height: 120,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: titels.length,
                          itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              List l1 = [];
                              l1.add(category[index]);
                              l1.add(quotes_list3[index]);
                              Navigator.pushNamed(context, '/fullscreen',
                                  arguments: l1);
                            },
                            child: Container(
                              height: 120,
                              width: 200,
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: colors1[index],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "${category[index]} Quotes",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Quotes by Author",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 120,
                        mainAxisExtent: 125,
                        crossAxisCount: 2),
                    itemBuilder: (ctx, i) => InkWell(
                      onTap: (){
                        List l1 = [];
                        l1.add(author[i]);
                        l1.add(quotes_list1[i]);
                        Navigator.pushNamed(context, '/fullscreen',
                            arguments: l1);
                      },
                      child: Container(
                        height: 100,
                        width: 120,
                        margin: EdgeInsets.all(5),
                        child: Container(
                          height: 110,
                          width: double.infinity,
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: colors3[i],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "${author[i]} Quotes",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Featured",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 120,
                        mainAxisExtent: 125,
                        crossAxisCount: 2),
                    itemBuilder: (ctx, i) => InkWell(
                      onTap: (){
                        List l1 = [];
                        l1.add(featuer[i]);
                        l1.add(quotes_list2[i]);
                        Navigator.pushNamed(context, '/fullscreen',
                            arguments: l1);
                      },
                      child: Container(
                        height: 100,
                        width: 120,
                        margin: EdgeInsets.all(5),
                        child: Container(
                          height: 110,
                          width: double.infinity,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: colors2[i],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "${featuer[i]} Quotes",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
