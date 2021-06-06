# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create! username: 'Admin', email: 'admin@admin.com', password: '123456',
                    password_confirmation: '123456', role: 'admin'
cr = CourseCategory.create! name: 'Análise e Desenvolvimento de Sistemas'
CourseCategory.create! name: 'Banco de Dados'
CourseCategory.create! name: 'Manufatura Avançada'
Course.create! name: 'The Complete Ruby on Rails Developer Course', course_duration: 30,
               course_category_id: cr.id, description: 'Since its introduction, Ruby on Rails has rapidly become one of the most popular and powerful web application development tools for both startups and mature software companies. Some of the top sites in the world started with Ruby on Rails such as Basecamp, Twitter, Shopify, Github, LivingSocial, Groupon, Hulu, Airbnb, Yellow Pages and many more! Even after immense scaling, most of them continue to use Rails! Ruby on Rails developers routinely command the highest salaries in the tech industry!'
