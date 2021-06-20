Member.create(first_name: 'Desiree',last_name:'Glover',email:'desiree.glover@gmail.com',contact_number:'121-121-1212')
Member.create(first_name: 'Logan',last_name:'Mayer',email:'logan.mayer@gmail.com',contact_number:'111-111-1111')
Member.create(first_name: 'Cassandra',last_name:'Owens',email:'c.owens@gmail.com',contact_number:'178-123-1598')
Member.create(first_name: 'Quinn',last_name:'Valencia',email:'quin.valencia@gmail.com',contact_number:'256-365-1793')

(1..5).each do |i|  
  Game.create(name:('Game'+i.to_s), start_date: '2021-06-18', end_date: '2021-06-19',player1_id: 1,player1_score: 10,player2_id:2,player2_score:30)
end

(1..5).each do |i|  
  Game.create(name:('Game'+((5+i).to_s)), start_date: '2021-06-18', end_date: '2021-06-19',player1_id: 1,player1_score: 40,player2_id:2,player2_score:30)
end

(1..5).each do |i|  
  Game.create(name:('Game'+((10+i).to_s)), start_date: '2021-06-18', end_date: '2021-06-19',player1_id: 3,player1_score: 10,player2_id:4,player2_score:12)
end
