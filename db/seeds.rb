cats = [
    {    
        name:"Cody",
        age: 4,
        enjoys:"playing with strings"
     },
     {  
        name:"Cindy",
        age: 5,
        enjoys:"hanging out in the barn"
     },
     {   
        name:"Jack",
        age: 3,
        enjoys:"spending time with the cows"
     },
  ]
  
  cats.each do |attributes|
    Cat.create attributes
    puts "creating cat #{attributes}"
  end