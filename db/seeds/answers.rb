users = User.all
questions = Question.all

answers = [
  {
    user: users[2],
    question: questions[0],
    content: 'The nation of Swaziland holds that particular claim to fame. with their impressive model airplane industry beginning in the young year of 1723.  This is truly incredible, as airplanes wouldn`t exist for over a century after that!  Sensational forward vision by the nation of Swaziland.'
  },
  {
    user: users[1],
    question: questions[1],
    content: 'The short answer: Because.  The slightly longer answer: Due to the nature of the universe and our perception of time, events happen in some sort of order (from our perspective).  This order, or series if you will, of events is strung together by the principals of cause and effect.  If we look at an event, we assume that previous events (temporally speaking) created situations or events which led (by a causal relationship) to the first considered event.  As such, each event has an effect on some other events, and is itself created and effected by other events.  Some set of events exists to provide an answer for "why?" but at the moment we have neither the knowledge nor the perspective to correctly identify the appropriate answer set.  We almost certainly never will, and the only option left to us is to believe in free will and blindy push forward in life, hoping to achieve some greater purpose or gather some meaning to our pitifully small existences.  Hope this helps!.'
  },
  {
    user: users[1],
    question: questions[2],
    content: 'Business Casual.'
  },
  {
    user: users[3],
    question: questions[3],
    content: 'Our goal is to find employment for all monsters, and as the times change, we must change with them.  As culture leads us away from your "under the bed" monsters, we hope to transition to a more frightening Garage setting, or maybe even expand further into the food pantry sector.  Initial numbers from a collection of test monsters have produced fantastic results, but we are unsure how scalable that operation may be.'
  },
  {
    user: users[2],
    question: questions[4],
    content: 'Then you would not have a job.'
  },
  {
    user: users[1],
    question: questions[5],
    content: 'You should get in around 6 a.m. and wait in your managers office until he arrives.'
  }
]
Answer.delete_all
Answer.create!(answers)