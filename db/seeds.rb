3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

5.times do |blog|
  Blog.create!(
    title:  "My Blog Post #{blog}",
    body:   "Nulla purus dolor, posuere sed dolor at, euismod iaculis neque. Sed vitae rhoncus sem. Nulla facilisi. Ut odio lectus, vestibulum eget ornare sed, lobortis in risus. Praesent consequat scelerisque iaculis. Donec iaculis aliquam est a pellentesque. Proin pulvinar sit amet ipsum vehicula eleifend. Maecenas porta viverra viverra. Maecenas non lacinia enim, vel viverra ante. Etiam pellentesque bibendum volutpat.",
    topic_id: Topic.last.id
  )
end

5.times do |skill|
  Skill.create!(
    title:              "My Skill #{skill}",
    percent_utilized:   15
  )
end

8.times do |portfolio|
  Portfolio.create!(
    title: "Port Title: #{portfolio}",
    subtitle: "Portsub",
    body: "Nunc varius elementum dui vel viverra. Nulla viverra sem malesuada arcu porttitor malesuada. Fusce tempus, ipsum a interdum condimentum, sapien sem ornare diam, ut ullamcorper metus ante sed velit. Etiam vitae felis ut nisi rutrum maximus at id nulla. Duis luctus sollicitudin ultricies. Nullam vel vestibulum lacus. Cras dignissim fringilla porta!",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

1.times do |portfolio|
  Portfolio.create!(
    title: "Port Title: #{portfolio}",
    subtitle: "Angular",
    body: "Nunc varius elementum dui vel viverra. Nulla viverra sem malesuada arcu porttitor malesuada. Fusce tempus, ipsum a interdum condimentum, sapien sem ornare diam, ut ullamcorper metus ante sed velit. Etiam vitae felis ut nisi rutrum maximus at id nulla. Duis luctus sollicitudin ultricies. Nullam vel vestibulum lacus. Cras dignissim fringilla porta!",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

3.times do |technology|
 Portfolio.last.technologies.create!(
   name: "Tech #{technology}"
 )
end

puts "Generated seeds"
