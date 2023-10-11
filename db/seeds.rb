# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@authors = [
    { name: 'Александр Пушкин'},
    { name: 'Нил Гейман'},
    { name: 'Макото Синкай'},
    { name: 'Хаяо Миядзаки'},
]

@categories = [
    { title: 'Аниме и манга'},
    { title: 'Видеоигры'},
    { title: 'Книги'},
    { title: 'Комиксы'},
    { title: 'Мифология'},
    { title: 'Известные люди'},
    { title: 'Мультфильмы и мультсериалы'},
    { title: 'Фильмы и сериалы'},
    { title: 'Другое'},
]

@fandom_characters = [
    { name: ['Кроули', 'Азирафаэль', 'Михаил', 'Вельзевул'], fandom_id: 3},
    { name: ['Мицуха Миямидзу', 'Таки Татибана', 'Мики Окудэра', 'Ёцуха Миямидзу'], fandom_id: 2},
    { name: ['Софи Хаттер', 'Хаул', 'Кальцифер', 'Ведьма пустоши'], fandom_id: 4},
    { name: ['Пётр Андреевич Гринёв', 'Мария Ивановна Миронова', 'Алексей Иванович Швабрин'], fandom_id: 1},
]

@fandoms = [
    { title: 'Капитанская дочка', author_id: 1 },
    { title: 'Твоё имя', author_id: 3 },
    { title: 'Благие знамения', author_id: 2 },
    { title: 'Ходячий замок', author_id: 4 },
]

# def seed
#     create_fandoms(@fandoms)
# end

def reset_db
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
end

# def create_fandoms(data)
#     data.shuffle.each do |fandoms|
#       fandom = Fandom.create(name: fandoms[:name], user_id: user.id)
#       puts "Fandom with id #{fandom.id} just created"
#     end
# end