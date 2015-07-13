users = User.all
questions = Question.all

answers = [
  {
    user: users[2],
    question: questions[0],
    content: 'Sed gravida turpis mauris, quis mollis arcu malesuada eu. Cras vitae eros quis eros vulputate sagittis eu vel felis. Duis dictum pulvinar consequat. Sed facilisis, ex nec accumsan congue, lacus nisl sollicitudin velit, ut accumsan justo neque aliquam lectus. Donec interdum sem ut mauris maximus, id scelerisque ipsum tincidunt.'
  },
  {
    user: users[1],
    question: questions[1],
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed placerat tempus est quis porttitor. Nam lobortis euismod lorem id viverra. In at libero ac ligula ultricies aliquet. Fusce pulvinar facilisis eleifend. Suspendisse dui leo, maximus at feugiat sit amet, vestibulum nec arcu. Integer eleifend mauris ut congue vehicula. Morbi cursus, ex non venenatis suscipit, magna nisl sollicitudin tellus, sit amet pellentesque tortor eros non quam. Ut diam ipsum, fermentum vel tortor et, maximus facilisis eros. Cras porttitor congue ligula sed maximus. Aenean eu imperdiet turpis, vel maximus lacus. Aenean convallis tortor et volutpat fermentum.'
  },
  {
    user: users[1],
    question: questions[2],
    content: 'Donec pretium, magna pretium suscipit consectetur, nisl orci iaculis sapien, non facilisis dui sapien molestie neque. Aenean volutpat et quam quis ultricies.'
  },
  {
    user: users[3],
    question: questions[3],
    content: 'Nulla eu augue semper, tempor libero pretium, convallis est. Aliquam erat volutpat. In lobortis semper enim, ac elementum neque imperdiet non. Praesent lorem ipsum, dignissim ut eleifend et, suscipit eu elit. Integer quis quam nec felis accumsan congue ac et augue. Quisque vitae libero sit amet tortor finibus suscipit.'
  },
  {
    user: users[2],
    question: questions[4],
    content: 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur at lorem id risus dictum mollis id quis arcu.'
  },
  {
    user: users[1],
    question: questions[5],
    content: 'Morbi finibus eu libero ac pulvinar. In pretium porttitor bibendum. Quisque convallis dolor quis hendrerit accumsan. Vestibulum ullamcorper molestie suscipit. Vivamus vestibulum tempus nibh lobortis hendrerit.'
  }
]
Answer.delete_all
Answer.create!(answers)