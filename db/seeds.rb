# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Service.destroy_all
Appointment.destroy_all

s1 = Service.create(price: 225, name: 'Full Sew-In/Extensions', body: 'Full weaves are a great choice for changing your look dramatically.  The process involves synthetic or human hair attachments which are woven into your existing hair. Braids are used as the base of the style.  Aside from their beautiful look, hair weaves add volume to existing hair and successfully conceal thinning hair as well. Sew in weaves are great for all hair types. Weaves typically last anywhere from 4 -12 weeks depending on the client and hair type.')
s2 = Service.create(price: 50, name: 'Relaxer', body: 'A relaxer is a type of lotion or cream generally used by people with tight curls or very curly hair which makes hair easier to straighten by chemically "relaxing" the natural curls. Relaxers usually last about 6-12 weeks.')
s3 = Service.create(price: 145, name: 'Partial Sew-In/Extensions', body: 'Partial weaves are a great choice for changing your look dramatically.  The process involves synthetic or human hair attachments which are woven into your existing hair. Braids are used as the base of the style.  Aside from their beautiful look, hair weaves add volume to existing hair and successfully conceal thinning hair as well. Sew in weaves are great for all hair types. Weaves typically last anywhere from 4 -12 weeks depending on the client and hair type.')
s4 = Service.create(price: 45, name: 'HairCut', body: 'From the Big Chop to Assymetrical to the Classic Bob: Studio 105 can accomplish any haircut that your heart desires')
s5 = Service.create(price: 35, name: 'Shampoo + Color', body: 'Studio 105 specializes in healthy hair-coloring that will keep your locs luxurious and strong without comprimising that funky color you crave.')

# s1.appointments.create(start_time: '9:00am', end_time: '11:30am')
