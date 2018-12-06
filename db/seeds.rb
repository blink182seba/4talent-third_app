# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
Weather.destroy_all
City.create([
    { name: 'Santiago', image:'http://mall.costaneracenter.cl/custom/images/4.jpg' },
    { name: 'Buenos Aires', image:'https://www.apertura.com/__export/1528127482770/sites/revistaap/img/2018/06/04/shutterstock_202383616.jpg_1913337537.jpg' },
    { name: 'Lima', image:'https://www.infoturperu.com.pe/media/k2/items/cache/f3ab6469d324023f0d0d8be4b64a3574_XL.jpg' },
    { name: 'Sao Paulo', image:'https://global.usc.edu/files/2017/06/iStock-842960000_high-brazil-e1519773965719-300x150.jpg' },
])
