# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

text = 'Запертый в Могильнике, больничном крыле Дома, Волк отчаянно борется с темнотой, наползающей на него со всех сторон. Не в его правилах прятаться. Но когда Волк вырывается на свет, он беспокоит подростка куда больше когда-то опасных теней.'
@words = text.downcase.gsub(/[—.,«»:()]/, '').gsub(/  /, '').split(' ')

def create_sentence
    sentence_words = []

    (10..20).to_a.sample.times do
        sentence_words << @words.sample
    end

    sentence = sentence_words.join(' ').capitalize + '.'
end

def upload_random_image
    uploader = FandomImageUploader.new(Fandom.new, :fandom_image)
    uploader.cache!(File.open(Dir.glob(File.join(Rails.root, 'public/autoupload/fandoms', '*')).sample))
    uploader
end

@authors = [
    { name: 'А. Дюма', fandom_id: 40},
    { name: 'А. Сапковский', fandom_id: 26},
    { name: 'Алекс Хирш', fandom_id: 13},
    { name: 'Геге Акутами', fandom_id: 23},
    { name: 'Дж. Роулинг', fandom_id: 9},
    { name: 'Джейн Остин', fandom_id: 32},
    { name: 'Джон Р. Р. Толкин', fandom_id: 44},
    { name: 'Ёсихиро Тогаси', fandom_id: 39},
    { name: 'Иджинио Страффи', fandom_id: 30},
    { name: 'К. С. Льюис', fandom_id: 34},
    { name: 'Л.Н. Толстой', fandom_id: 49},
    { name: 'Луизы Мэй Олкотт', fandom_id: 31},
    { name: 'Льюис Кэрролл', fandom_id: 19},
    { name: 'Макото Синкай', fandom_id: [3, 4]},
    { name: 'Масаси Кисимото', fandom_id: 10},
    { name: 'Моcян Тунсю', fandom_id: [22, 47]},
    { name: 'Мэттью Вон', fandom_id: 38},
    { name: 'Н. Щерба', fandom_id: 36},
    { name: 'Нарита Рёго', fandom_id: 5},
    { name: 'Нил Гейман', fandom_id: [18, 41]},
    { name: 'Олд Сянь', fandom_id: 1},
    { name: 'ТНТ', fandom_id: 35},
    { name: 'Хадзима Исаяма', fandom_id: 43},
    { name: 'Э. Райс', fandom_id: 29},
    { name: 'Эрик Крипке', fandom_id: 17},
    { name: 'Activision', fandom_id: 37},
    { name: 'BBC', fandom_id: [16, 33]},
    { name: 'Bubble Comics', fandom_id: 8},
    { name: 'Capcom', fandom_id: 6},
    { name: 'DC Comics', fandom_id: 20},
    { name: 'Disney', fandom_id: [46, 50]},
    { name: 'Hoyoverse', fandom_id: 27},
    { name: 'Hybe Corporation', fandom_id: 12},
    { name: 'JYP Entertainment', fandom_id: 28},
    { name: 'Marvel Comics', fandom_id: 25},
    { name: 'None', fandom_id: 11},
    { name: 'Quantic Dream', fandom_id: 7},
    { name: 'Shuka', fandom_id: 2},
    { name: 'Syco Music', fandom_id: 24},
    { name: 'YG Entertainment', fandom_id: 48},
    { name: 'Zagtoon', fandom_id: 45},
    { name: ['Гэри Гайгэкс', 'Дейв Арнесон'], fandom_id: 42},
    { name: ['Джастин Ройланд', 'Дэн Хармон'], fandom_id: 14},
    { name: ['Марк Гэтисс', 'Стивен Моффат'], fandom_id: 15},
    { name: ['Рич Мур', 'Байрон Ховард'], fandom_id: 21},
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
    { name: ['Мо Гуаньшань', 'Хэ Тянь', 'Хэ Чэн', 'Цзянь И', 'Цунь Тоу', 'Цю', 'Чжань Чжэнси', 'Шэ Ли'], fandom_id: 1},
    { name: ['Анджело Лагуса', 'Ванетти Неро', 'Кортео'], fandom_id: 2},
    { name: ['Мицуха Миямидзу', 'Таки Татибана'], fandom_id: 3},
    { name: ['Акари Шинохара', 'Такаки Тоно'], fandom_id: 4},
    { name: ['Ворона', 'Изая Орихара', 'Кадота Кёхэй', 'Курури Орихара', 'Майру Орихара', 'Селти Стурлусон (Чёрный байкер)', 'Шизуо Хейваджима', 'Шинра Кишитани'], fandom_id: 5},
    { name: ['Альсина Димитреску', 'Дерек Клиффорд Симмонс', 'Карл Гейзенберг', 'Итан Уинтерс', 'Кассандра Димитреску', 'Крис Редфилд', 'Леон Скотт Кеннеди', 'Розмари Уинтерс'], fandom_id: 6},
    { name: ['Гэвин Рид', 'Коннор RK800', 'Кэра', 'Маркус', 'Саймон', 'Хлоя', 'Хэнк Андерсон', 'Элайджа Камски'], fandom_id: 7},
    { name: ['Алтан Дагбаев', 'Вадим Дракон', 'Вера Дубина', 'Игорь Гром', 'Олег Волков', 'Сергей Разумовский', 'Юля Пчелкина'], fandom_id: 8},
    { name: ['Альбус Дамблдор', 'Гарри Поттер', 'Геллерт Гриндевальд', 'Гермиона Грейнджер', 'Персиваль Грейвс', 'Драко Малфой', 'Сириус Блэк', 'Ремус Люпин'], fandom_id: 9},
    { name: ['Наруто Узумаки', 'Саске Учиха', 'Какаши Хатаке', 'Сакура Харуно', 'Орочимару', 'Неджи Хьюга', 'Ирука Умино'], fandom_id: 10},
    { name: ['Аид', 'Персефона', 'Аполлон', 'Арес', 'Тесей', 'Одиссей', 'Ахилл', 'Патрокл'], fandom_id: 11},
    { name: ['Ким Сокджин', 'Ким Тэхён', 'Мин Юнги', 'Пак Чимин', 'Чон Хосок', 'Чон Чонгук', 'Ким Намджун'], fandom_id: 12},
    { name: ['Диппер Пайнс', 'Билл Сайфер', 'Мейбл Пайнс', 'Стэнли Пайнс', 'Зус'], fandom_id: 13},
    { name: ['Рик Санчез', 'Морти Смит', 'Саммер Смит', 'Джерри Смит', 'Юнити'], fandom_id: 14},
    { name: ['Шерлок Холмс', 'Джон Ватсон', 'Джеймс Мориарти', 'Майкрофт Холмс', 'Мэри Ватсон'], fandom_id: 15},
    { name: ['Артур Пендрагон', 'Гвиневра', 'Ланселот', 'Мерлин', 'Моргана Пендрагон'], fandom_id: 16},
    { name: ['Дин Винчестер', 'Сэм Винчестер', 'Бобби Сингер', 'Габриэль', 'Джек Клайн', 'Кастиэль'], fandom_id: 17},
    { name: ['Адам Янг', 'Азирафаэль', 'Гавриил', 'Кроули'], fandom_id: 18},
    { name: ['Алиса Лидделл', 'Белый Кролик', 'Болванщик (Шляпник)', 'Червонная Королева'], fandom_id: 19},
    { name: ['Альфред Пенниуорт', 'Барбара Гордон', 'Барри Аллен', 'Брюс Уэйн', 'Джейсон Тодд', 'Джокер'], fandom_id: 20},
    { name: ['Джуди Хоппс', 'Ник Уайлд'], fandom_id: 21},
    { name: ['Лин Вэнь', 'Му Цин', 'Нань Фэн', 'Се Лянь', 'Фу Яо', 'Хуа Чэн'], fandom_id: 22},
    { name: ['Кенто Нанами', 'Май Зенин', 'Маки Зенин', 'Мегуми Фушигуро', 'Нобара Кугисаки', 'Сатору Годжо', 'Сугуру Гето', 'Юдзи Итадори'], fandom_id: 23},
    { name: ['Гарри Стайлс', 'Зейн Малик', 'Лиам Пейн', 'Луи Томлинсон', 'Найл Хоран'], fandom_id: 24},
    { name: ['Джин Грей', 'Питер Паркер (Человек-Паук)', 'Стефан Стрэндж (Доктор Стрэндж)', 'Стив Роджерс (Капитан Америка)', 'Тони Старк (Железный Человек)'], fandom_id: 25},
    { name: ['Весемир', 'Геральт из Ривии', 'Йеннифэр из Венгерберга', 'Ламберт', 'Лютик', 'Цирилла'], fandom_id: 26},
    { name: ['Дилюк Рагнвиндр', 'Ёимия Наганохара', 'Кэйа Альберих'], fandom_id: 27},
    { name: ['Бан Чан', 'Ким Сынмин', 'Ли Минхо', 'Ли Феликс', 'Со Чанбин', 'Хан Джисон', 'Хван Хёнджин', 'Ян Чонин'], fandom_id: 28},
    { name: ['Арман', 'Дэвид Тальбот', 'Клодия', 'Лестат де Лионкур', 'Луи де Пон дю Лак'], fandom_id: 29},
    { name: ['Айси', 'Блум', 'Стэлла', 'Тэкна', 'Муза', 'Флора', 'Дарси'], fandom_id: 30},
    { name: ['Джозефина Марч', 'Теодор Лоренс'], fandom_id: 31},
    { name: ['Джордж Уикхем', 'Лидия Беннет', 'Мэри Беннет', 'Фицуильям Дарси', 'Элизабет Беннет'], fandom_id: 32},
    { name: ['Барбара Райт', 'Вики Паллистер', 'Двенадцатый Доктор', 'Девятый Доктор', 'Джекки Тайлер', 'Роза Тайлер'], fandom_id: 33},
    { name: ['Аслан', 'Джадис (Белая Колдунья)', 'Люси Пэвенси', 'Каспиан X', 'Питер Пэвенси', 'Сьюзен Певенси', 'Эдмунд Пэвенси'], fandom_id: 34},
    { name: ['Александр Шепс', 'Олег Шепс', 'Владислав Череватый', 'Марьяна Романова'], fandom_id: 35},
    { name: ['Астрагор', 'Василиса Огнева', 'Данила Бронников', 'Диана Фрезер'], fandom_id: 36},
    { name: ['Владимир Макаров', 'Джонатан Прайс', 'Кайл «Газ» Гэррик', 'Кейт Ласвэлл', 'Саймон Райли'], fandom_id: 37},
    { name: ['Гарри Харт', 'Мерлин', 'Гэри (Эггси) Анвин'], fandom_id: 38},
    { name: ['Аллука Золдик', 'Гон Фрикс', 'Зено Золдик', 'Персонаж'], fandom_id: 39},
    { name: ['Арамис', 'Атос', 'Базен', "Д'Артаньян", 'Мордаунт'], fandom_id: 40},
    { name: ['Время', 'Желание', 'Коринфянин', 'Ночь'], fandom_id: 41},
    { name: ['Тана', 'Варвар', 'Воин', 'Волшебник', 'Друид', 'Жрец'], fandom_id: 42},
    { name: ['Армин Арлерт', 'Бертольд Гувер', 'Габи Браунж', 'Жан Кирштайн', 'Имир', 'Кенни Аккерман'], fandom_id: 43},
    { name: ['Андариэль', 'Галадриэль', 'Гимли', 'Голлум', 'Гэндальф'], fandom_id: 44},
    { name: ['Адриан Агрест', 'Габриэль Агрест (Бражник)', 'Маринетт Дюпен-Чен'], fandom_id: 45},
    { name: ['Анжелика Тич', 'Армандо Салазар', 'Гектор Барбосса', 'Генри Тёрнер', 'Джеймс Норрингтон', 'Капитан Джек Воробей'], fandom_id: 46},
    { name: ['Вэй Усянь (Вэй Ин)', 'Вэнь Цин', 'Вэнь Цюнлинь (Вэнь Нин)', 'Лань Ванцзи (Лань Чжань)'], fandom_id: 47},
    { name: ['Ким Дженни', 'Ким Джису', 'Лалиса Манобан', 'Пак Чеён', 'Чон Джэхён'], fandom_id: 48},
    { name: ['Андрей Болконский', 'Наташа Ростова', 'Николай Ростов', 'Пьер Безухов'], fandom_id: 49},
    { name: ['Витани', 'Зазу', 'Зира', 'Муфаса', 'Сараби'], fandom_id: 50},
]

@fandoms = [
    { title: '«19 дней - Однажды» / «19 Tian Yidan»', author_id: 21, category_id: 4, character_id: 1, description: create_sentence, fandom_image: upload_random_image},
    { title: '«91 день» / «91 Days»', author_id: 38, category_id: 1, character_id: 2, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Твоё имя» / «Kimi no Na wa»', author_id: 14, category_id: 1, character_id: 3, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Пять сантиметров в секунду» / «Byousoku 5 Centimeter»', author_id: 14, category_id: 1, character_id: 4, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Дюрарара!!» / «Durarara!!»', author_id: 19, category_id: 1, character_id: 5, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Resident Evil»', author_id: 29, category_id: 2, character_id: 6, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Detroit: Стать человеком» / «Detroit: Become Human»', author_id: 37, category_id: 2, character_id: 7, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Майор Гром»', author_id: 28, category_id: 4, character_id: 8, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Гарри Поттер» / «Harry Potter»', author_id: 5, category_id: 3, character_id: 9, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Наруто» / «Naruto»', author_id: 15, category_id: 1, character_id: 10, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Греческая мифология»', author_id: 36, category_id: 5, character_id: 11, description: create_sentence, fandom_image: upload_random_image},
    { title: '«BTS»', author_id: 33, category_id: 6, character_id: 12, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Гравити Фолз» / «Gravity Falls»', author_id: 3, category_id: 7, character_id: 13, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Рик и Морти» / «Rick and Morty»', author_id: 43, category_id: 7, character_id: 14, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Шерлок (ВВС)»', author_id: 44, category_id: 8, character_id: 15, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Мерлин»', author_id: 27, category_id: 8, character_id: 16, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Сверхъестественное» / «Supernatural»', author_id: 25, category_id: 8, character_id: 17, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Благие Знамения» / «Good Omens»', author_id: 20, category_id: 8, character_id: 18, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Алиса в Стране чудес» / «Alice in Wonderland»', author_id: 13, category_id: 3, character_id: 19, description: create_sentence, fandom_image: upload_random_image},
    { title: '«DC Comics»', author_id: 30, category_id: 4, character_id: 20, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Зверополис» / «Zootopia»', author_id: 45, category_id: 7, character_id: 21, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Благословение небожителей» / «Tiān Guān Cì Fú»', author_id: 16, category_id: 3, character_id: 22, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Магическая битва» / «Jujutsu Kaisen»', author_id: 4, category_id: 1, character_id: 23, description: create_sentence, fandom_image: upload_random_image},
    { title: '«One Direction»', author_id: 39, category_id: 6, character_id: 24, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Marvel Comics»', author_id: 35, category_id: 4, character_id: 25, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Ведьмак» / «Saga o wiedźminie»', author_id: 2, category_id: 3, character_id: 26, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Genshin Impact»', author_id: 32, category_id: 2, character_id: 27, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Stray Kids»', author_id: 34, category_id: 6, character_id: 28, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Вампирские хроники» / «The Vampire Chronicles»', author_id: 24, category_id: 3, character_id: 29, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Клуб Винкс: Школа волшебниц» / «Winx Club»', author_id: 9, category_id: 7, character_id: 30, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Маленькие женщины» / «Little Women»', author_id: 12, category_id: 3, character_id: 31, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Гордость и предубеждение» / «Pride and Prejudice»', author_id: 6, category_id: 3, character_id: 32, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Доктор Кто» / «Doctor Who»', author_id: 27, category_id: 8, character_id: 33, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Хроники Нарнии» / «The Chronicles of Narnia»', author_id: 10, category_id: 3, character_id: 34, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Битва экстрасенсов»', author_id: 22, category_id: 9, character_id: 35, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Часодеи»', author_id: 18, category_id: 3, character_id: 36, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Call of Duty»', author_id: 26, category_id: 2, character_id: 37, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Kingsman: Секретная служба» / «Kingsman: The Secret Service»', author_id: 17, category_id: 8, character_id: 38, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Hunter x Hunter»', author_id: 8, category_id: 1, character_id: 39, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Три мушкетёра»', author_id:1, category_id: 3, character_id: 40, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Песочный человек» / «The Sandman»', author_id: 20, category_id: 4, character_id: 41, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Dungeons & Dragons»', author_id: 42, category_id: 9, character_id: 42, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Атака на титанов» / «Attack on Titan»', author_id: 23, category_id: 1, character_id: 43, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Властелин колец» / «The Lord of the Rings» ', author_id: 7, category_id: 3, character_id: 44, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Леди Баг и Супер-Кот» / «Miraculous, les aventures de Ladybug et Chat Noir»', author_id: 41, category_id: 7, character_id: 45, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Пираты Карибского моря» / «Pirates of the Caribbean»', author_id: 31, category_id: 8, character_id: 46, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Магистр дьявольского культа» / «Mo Dao Zu Shi»', author_id: 16, category_id: 3, character_id: 47, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Blackpink»', author_id: 40, category_id: 6, character_id: 48, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Война и мир»', author_id: 11, category_id: 3, character_id: 49, description: create_sentence, fandom_image: upload_random_image},
    { title: '«Король Лев» / «The Lion King»', author_id: 31, category_id: 7, character_id: 50, description: create_sentence, fandom_image: upload_random_image},
]

def seed
    reset_db
    create_categories
    create_authors
    create_fandoms
    create_comments(2..8)
end

def reset_db
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
end

def create_categories
    @categories.each do |category_card|
      category = Category.create(category_card)
      puts "Category with title #{category.title} just created"
    end
end

def create_authors
    @authors.each do |author_card|
      author = Author.create(author_card)
      puts "Author with name #{author.name} and id #{author.id} just created"
    end
end

def create_fandoms
    @fandoms.each do |fandom_card|
      fandom = Fandom.create(fandom_card)
      puts "Fandom with name #{fandom.title} just created"
    end
end

def create_comments(quantity)
    fandoms = Fandom.all

    fandoms.each do |fandom|
        quantity.to_a.sample.times do
            comment = Comment.create(fandom_id: fandom.id, body: create_sentence)
            puts "Comment with id #{comment.id} for Pin with id #{comment.fandom.id} just created"
        end
    end
end

seed

