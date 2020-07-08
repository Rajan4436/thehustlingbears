User.create(email: "thehustlingbear@gmail.com", confirmed_at: Time.now, password: "thb@6344", first_name: "Rajan", last_name:  "Verma")

plans = [{
			  frequency: 1,
			  link: "",
			  title: "1 per week (free)",
			  text: "4-5 strategies per month. You can have it free but it would take approx 10 years to get 500 strategies 😬"
		  },
		  {
			  frequency: 2,
			  link: "",
			  title: "2 per week (free)",
			  text: "8-9 strategies per month, You can have it free but it would take approx 5 years to get 500 strategies 😬" 
		  },
		  {
			  frequency: 3,
			  link: "https://gum.co/EeDvm",
			  title: "3 per week",
			  text: "Hmmmm, 12-15 strategies per month. That would be 2$ per month and will take 3 years approx to get 500 strategies 😐" 
		  },
		  # {
			 #  frequency: 4,
			 #  link: "",
			 #  title: "4 per week",
			 #  text: "Great, So it would be 3$ per month and will take 2.5 years approx to get 500 strategies 😁" 
		  # },
		  {
			  frequency: 5,
			  link: "https://gum.co/NeDim",
			  title: "5 per week",
			  text: "20-25 strategies per month. Cool, So it would be 4$ per month and will take 2 years approx to get 500 strategies 😁" 
		  },
		  {
			  frequency: 7,
			  link: "https://gum.co/YOlWn",
			  title: "7 per week",
			  text: "<h4>Are you sure, it wouldn't be too much to apply?  😬</h4> 28-35  strategies per month. No worries it still would be 5$ per month and will take 1.5 years approx to get 500 strategies" 
		  },
		  {
			  frequency: 10,
			  link: "https://gum.co/fnszn",
			  title: "10 per week",
			  text: "<h4>Wow, you seem very enthusiastic 😃</h4> Great, 40-50 strategies per month. It would be 7$ per month and will take 1 year approx to get 500 strategies"
	    },
		  {
		   	frequency: 500,
		    link: "",
		    title: "I Need More",
		    text: "<h4>How about all at once 😉 ?</h4> Unfortunately, this is the maximum number that can be provided   "
		    # text: "<h4>How about all at once 😉 ?</h4> You can subscribe for whole book just for 5$. It will be launched in October end. The launch price would be 20-25$ but you can pre order it "
		  }
		]

Plan.create(plans)