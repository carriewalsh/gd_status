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

m1 = l1.machines.create(name: "can", status: 0, type: 0)
m1 = l1.machines.create(name: "bottle", status: 0, type: 1)
m1 = l1.machines.create(name: "keg", status: 0, type: 2)
m1 = l1.machines.create(name: "keg", status: 0, type: 2)

b1= Beer.create(name: "yeti", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Yeti_Imperial_Stout.png")
b2= Beer.create(name: "titan", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Titan-IPA-Medallion-e1539979951623.png")
b3= Beer.create(name: "hercules", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Hercules_Double_IPA.png")
b4= Beer.create(name: "colette", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Colette-2017-Update-Medallion.png")
b5= Beer.create(name: "claymore", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Claymore.png")
b6= Beer.create(name: "denver pale ale", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Denver_Pale_Ale.png")
b7= Beer.create(name: "velvet yeti", icon: "https://greatdivide.com/wp-content/uploads/2016/11/v-yeti-icon-1.png")
b8= Beer.create(name: "samurai", icon: "https://greatdivide.com/wp-content/uploads/2016/11/samurai-icon-1.png")
b9= Beer.create(name: "hazy ipa", icon: "https://greatdivide.com/wp-content/uploads/2017/04/Hazy-Medallion_2018.jpg")
b10= Beer.create(name: "heyday", icon: "https://greatdivide.com/wp-content/uploads/2017/12/HeyDay-Medallion.png")
b11= Beer.create(name: "lager", icon: "https://greatdivide.com/wp-content/uploads/2019/07/LagerMedallion-3.png")
b12= Beer.create(name: "orabelle", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Orabelle.png")
b13= Beer.create(name: "roadie", icon: "https://greatdivide.com/wp-content/uploads/2015/02/Roadie-Medallion-final.png")
b14= Beer.create(name: "hoss", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Hoss_Oktoberfest.png")
b15= Beer.create(name: "hibernation", icon: "https://greatdivide.com/wp-content/uploads/2016/06/Hibernation.png")
b16= Beer.create(name: "hop disciples", icon: "https://greatdivide.com/wp-content/uploads/2016/11/hop-disciples-icon-1.png")
b17= Beer.create(name: "strawberry rhubarb", icon: "https://greatdivide.com/wp-content/uploads/2017/05/SR-icon.png")
b18= Beer.create(name: "chai yeti", icon: "https://greatdivide.com/wp-content/uploads/2015/10/Untitled-1.png")
b19= Beer.create(name: "chocolate cherry yeti", icon: "https://greatdivide.com/wp-content/uploads/2018/12/Chocolate-Cherry-Yeti-Medallion-1.png")
b20= Beer.create(name: "vanilla oak aged yeti", icon: "https://greatdivide.com/wp-content/uploads/2017/12/Vanilla-Yeti-Medallion.png")
b21= Beer.create(name: "barrel aged yeti", icon: "https://greatdivide.com/wp-content/uploads/2016/06/ba-yeti-medalion.png")
b22= Beer.create(name: "wood werks 3", icon: "https://greatdivide.com/wp-content/uploads/2017/12/Woodwerks3-Medallion.png")
b23= Beer.create(name: "wood werks 4", icon: "https://greatdivide.com/wp-content/uploads/2018/12/Wood-Werks-4-Medallion-e1545175875792.png")
b24= Beer.create(name: "wood werks 5", icon: "https://greatdivide.com/wp-content/uploads/2019/06/Wood-Werks-5-Medallion.png")
