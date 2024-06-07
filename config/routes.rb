Rails.application.routes.draw do
  get("/",{:controller=>"omnical",:action=>"home"})
  get("/square/new",{:controller=>"omnical",:action=>"squared"})
  get("/square_root/new",{:controller=>"omnical",:action=>"squaredRoot"})
  get("/payment/new",{:controller=>"omnical",:action=>"payment"})
  get("/random/new",{:controller=>"omnical",:action=>"random"})



  get("/square/results",{:controller=>"omnical",:action=>"squaredResults"})
  get("/square_root/results",{:controller=>"omnical",:action=>"squaredRootResults"})
  get("/payment/results",{:controller=>"omnical",:action=>"paymentResults"})
  get("/random/results",{:controller=>"omnical",:action=>"randomResults"})

end
