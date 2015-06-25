intern_summaries = [
  {
    title: 'My Summer Internship at Liberty',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum, ligula eu dapibus eleifend, ligula nunc consequat ipsum, vitae dapibus diam augue vel justo. Sed sagittis urna quis justo luctus, ut aliquet nibh mollis. Pellentesque commodo, nibh quis ultricies placerat, libero lorem tincidunt justo, vel fringilla felis risus eget sem. Donec fringilla libero finibus leo cursus venenatis sed at neque. Mauris lacinia hendrerit felis non luctus. Nunc viverra metus convallis tellus ullamcorper dictum sed at quam. Praesent laoreet augue quis tincidunt consectetur. Praesent porttitor tellus vitae ante elementum, in molestie diam porttitor.',
    user_id: 1
  },
  {
    title: "Liberty's IT impact on me!",
    content: 'Mauris convallis odio neque, ac egestas nisl tempus at. Morbi auctor, orci sit amet molestie pulvinar, ex leo rhoncus massa, ut condimentum metus felis eget felis. Etiam ultrices, lorem nec fringilla rutrum, arcu elit rhoncus neque, in interdum nunc elit vitae nunc. Donec diam sapien, auctor id nisl id, interdum cursus elit. Fusce ut justo eu orci finibus viverra sit amet nec odio. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam vitae lobortis diam.',
    user_id: 2
  },
  {
    title: 'Learning, Growing, and Exploring careers at Liberty',
    content: 'Donec porttitor nulla vel arcu dapibus iaculis. Etiam hendrerit magna ut nulla ultricies, sed ultrices ante volutpat. Nunc tincidunt lacus et condimentum vehicula. Nullam ac vulputate sem, ac cursus odio. Cras vitae fringilla felis. Quisque aliquet a ligula eget pellentesque. Proin sem mauris, dictum id fringilla rhoncus, sollicitudin at sapien. Vivamus vulputate rutrum interdum. Maecenas ac tempus dui, quis pellentesque lorem.',
    user_id: 4
  },
  {
    title: 'Why I would coop at Liberty again',
    content: 'In hac habitasse platea dictumst. Vivamus sit amet urna tempor, gravida diam condimentum, viverra dolor. Aliquam eget tellus in sem pellentesque ornare sit amet non diam. Nullam commodo arcu quis mi viverra vulputate. Phasellus in libero pharetra, mattis quam ac, ullamcorper neque. Donec ut pharetra dui, tincidunt sollicitudin neque. Phasellus ut elit a augue convallis rhoncus. Mauris eu sem dapibus, feugiat diam et, interdum nunc. Fusce quis ligula quam. Fusce interdum venenatis tincidunt.',
    user_id: 6
  }
]
InternSummary.delete_all
InternSummary.create!(intern_summaries)