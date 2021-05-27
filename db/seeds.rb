# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create(
    [
        {
            User_id: '1',
            Email: 'nowak@gmail.com',
            password: 'haslotest'
        },
        {
            User_id: '2',
            Email: 'firma@firma.pl',
            password: 'password'
        }
    ]
)

customers = Customer.create(
    [
        {
            Customer_id: '1',
            User_id: '1',
            First_Name: 'Jan',
            Last_Name: 'Nowak',
            Phone: '789456123',
            Address_1: 'Grunwaldzka 5',
            Address_2: '',
            City: 'Wrocław',
            Postal_Code: '50123'
        }
    ]
)

suppliers = Supplier.create(
    [
        {
            Supplier_id: '1',
            User_id: '2',
            First_Name: 'Henryk',
            Last_Name: 'Kania',
            Office_Code: '50123'
        }
    ]
)