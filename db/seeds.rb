# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "Cameron Marks", email: "cameron.marks@greatdivide.com", password: "password", role: 0, job_title: "packaging analyst")
u1 = User.create(name: "Jeff Martin", email: "jeff.martin@greatdivide.com", password: "password", role: 1, job_title: "packaging analyst")
u1 = User.create(name: "Will Broeren", email: "will.broeren@greatdivide.com", password: "password", role: 1, job_title: "packaging analyst")


l1 = Location.create(name: "Arapahoe")
l2 = Location.create(name: "Brighton")

b1= Beer.create(name: "yeti", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Yeti_Imperial_Stout.png", category: "year_round")
b2= Beer.create(name: "titan", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Titan-IPA-Medallion-e1539979951623.png", category: "year_round")
b3= Beer.create(name: "hercules", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Hercules_Double_IPA.png", category: "year_round")
b4= Beer.create(name: "colette", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Colette-2017-Update-Medallion.png", category: "year_round")
b5= Beer.create(name: "claymore", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Claymore.png", category: "year_round")
b6= Beer.create(name: "denver pale ale", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Denver_Pale_Ale.png", category: "year_round")
b7= Beer.create(name: "velvet yeti", icon: "https://greatdivide.com/wp-content/uploads/2016/11/v-yeti-icon-1.png", category: "year_round")
b8= Beer.create(name: "samurai", icon: "https://greatdivide.com/wp-content/uploads/2016/11/samurai-icon-1.png", category: "year_round")
b9= Beer.create(name: "hazy ipa", icon: "https://greatdivide.com/wp-content/uploads/2017/04/Hazy-Medallion_2018.jpg", category: "year_round")
b10= Beer.create(name: "heyday", icon: "https://greatdivide.com/wp-content/uploads/2017/12/HeyDay-Medallion.png", category: "year_round")
b11= Beer.create(name: "lager", icon: "https://greatdivide.com/wp-content/uploads/2019/07/LagerMedallion-3.png", category: "year_round")
b12= Beer.create(name: "orabelle", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Orabelle.png", category: "seasonal")
b13= Beer.create(name: "roadie", icon: "https://greatdivide.com/wp-content/uploads/2015/02/Roadie-Medallion-final.png", category: "seasonal")
b14= Beer.create(name: "hoss", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Hoss_Oktoberfest.png", category: "seasonal")
b15= Beer.create(name: "hibernation", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Hibernation.png", category: "seasonal")
b16= Beer.create(name: "hop disciples", icon: "https://greatdivide.com/wp-content/uploads/2016/11/hop-disciples-icon-1.png", category: "tank_farm")
b17= Beer.create(name: "strawberry rhubarb", icon: "https://greatdivide.com/wp-content/uploads/2017/05/SR-icon.png", category: "tank_farm")
b18= Beer.create(name: "chai yeti", icon: "https://greatdivide.com/wp-content/uploads/2015/10/Untitled-1.png", category: "yeti")
b19= Beer.create(name: "chocolate cherry yeti", icon: "https://greatdivide.com/wp-content/uploads/2018/12/Chocolate-Cherry-Yeti-Medallion-1.png", category: "yeti")
b20= Beer.create(name: "vanilla oak aged yeti", icon: "https://greatdivide.com/wp-content/uploads/2017/12/Vanilla-Yeti-Medallion.png", category: "yeti")
b21= Beer.create(name: "barrel aged yeti", icon: "https://greatdivide.com/wp-content/uploads/2016/06/ba-yeti-medalion.png", category: "yeti")
b22= Beer.create(name: "wood werks 3", icon: "https://greatdivide.com/wp-content/uploads/2017/12/Woodwerks3-Medallion.png", category: "wood_werks")
b23= Beer.create(name: "wood werks 4", icon: "https://greatdivide.com/wp-content/uploads/2018/12/Wood-Werks-4-Medallion-e1545175875792.png", category: "wood_werks")
b24= Beer.create(name: "wood werks 5", icon: "https://greatdivide.com/wp-content/uploads/2019/06/Wood-Werks-5-Medallion.png", category: "wood_werks")


m1 = l1.machines.create(name: "bottle", status: 1, category: 0, beer_id: 1, size: '12_bottle')
m2 = l1.machines.create(name: "keg", status: 0, category: 2, beer_id: 23)
m3 = l2.machines.create(name: "can", status: 1, category: 1, beer_id: 14, size: '12_can')
m4 = l2.machines.create(name: "keg", status: 2, category: 2, beer_id: 10)
