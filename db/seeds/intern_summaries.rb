users = User.all
intern_summaries = [
  {
    title: 'My work in the unicorn dept.',
    content: "While rare, some interns may earn the right/privelege to work in Liberty Mutual's wold-class Unicorn department. Here, we work to catch, care for, and protect the remnants of the world Unicorn population (which has dwindled to an estimated 1,000 in the last hundred years or so). The best part of my day is stablework, I really love being close to the animals both on a physical level and on a networking level. I've had some great reviews written for me not only by my manager, but my favorite Unicorn, Fabio. He really played up my interpesonal skills, as well as my abilities in the Microsoft Office Suite. Can't say enough good things about this company and department.",
    user: users[0]
  },
  {
    title: "Liberty's IT impact on me!",
    content: 'My time at Liberty was one of learning and reflection. As I sat in my cube, looking out the window into the trees across the long field of cement we call a parking lot, I prepared for my next step in life. There was no going back; it was in the rear view mirror now and all I could do was to continue on. I stood up, ONWARD! I yelled to setting my Lync Status to busy. I charged to the stairs, stampeded through the front door past security. I was free! I looked to my right as I exit the building only to see my reflection in the conference room window. I could see into my eyes, I could see into my soul. The rain began to accumulate on my head, it poured down my face. I don’t know what I am doing, my insides began to cry. But I must continue, and so I did. ONWARD! I beckoned from the pit of my stomach! I continued my sprint into the woods with the strength of 100 mice. I was Liberated. A Mutual respect had been solidified between nature and myself. I was Liberty Mutualed.',
    user: users[1],
    tag_list: 'java, it, software development'
  },
  {
    title: 'How finding a Cursed Locket helped me with communication skills',
    content: 'While diving of the coast of Alaska, I discovered what could only be described as a treasure trove.  Buried in a chest near a sandbar was a collection of jewelry which must have dated back hundreds of years!  I donated or sold most of the treasure, but one thing I kept for myself; a beautiful dark locket with a red gem inside.  I originally kept it as a piece of jewelry and memento to remind myself of the event & look fly, but that didn`t last long.  After only a few days, I heard voices coming from the locket, trying to control my mind and actions.  I used techniques I had learned from Liberty Mutual Insurance Group to manage the voices and form us into a team, which was super useful for group projects and other team-oriented tasks.',
    user: users[3],
    tag_list: 'accounting, finace, business'
  },
  {
    title: 'Sample Experience 1 (my first experience of the world)',
    content: 'Darkness.  Lots of noise (muffled).  Cramped, confined.  Suddenly, light.',
    user: users[5],
    tag_list: 'accounting, finace, business, birth'
  },
  {
    title: 'Learning, Growing, and Exploring careers at Liberty',
    content: 'Liberty Mutual offers the greatest Career Development plan I have ever been a part of. I was able to take several training courses that I felt would benefit and progress my future career development.',
    user: users[2],
    tag_list: 'accounting, finace, business'
  },
  {
    title: 'blah blah blah here`s a sample summary',
    content: 'As an intern here at Liberty Mutual, I found myself contributing every day. My team provided me with work and guidance to ensure that I was always progressing.',
    user: users[3],
    tag_list: 'accounting, finace, business'
  },
  {
    title: '6 Easy tips for tipping in Tippecanoe County (IN)',
    content: '<p> Indiana is a huge state, but Tippecanoe is special; if you decide to visit over the summer, here are 6 things to consider when handling your bill in restaurants:</p><p> 1. If you have a smaller meal, tip slightly larger.  a 50 cent tip is nice, but really not much different from a dollar to you, so go big or go home :)</p><p></p><p> 2. 15% is a solid, go to number.  Better service can get more, poorer service less, but 15 is a decent base.</p><p></p><p> 3. cash is preferred payment, due to high processing fees for credit cards.  keep this in mind, your servers will appreciate it!</p><p></p><p> 4. Reason Number 4 :)</p><p></p><p> 5. Talk to your wait-staff (if it`s not too busy).  Get to know them, learn their stories.  Then tip 20%.</p><p></p><p> 6. If you do get change, save your ones and tip with other bills.  This saves most of your ones for other purposes ;) </p>',
    user: users[4],
    tag_list: 'it, software development, python'
  }
]
InternSummary.delete_all
InternSummary.create!(intern_summaries)
