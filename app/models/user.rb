class User < ApplicationRecord
   has_one :cart

   enum gender: [:man, :woman]

   def self.task_one
      resorts = {
         :'Янгантау' => 23000.5,
         :'Сочи' => 53432.4,
         :'Солилецк' => 14523.5,
         :'Байкал' => 21534.5,
         :'Крым' => 16234.3,
         :'Абзаково' => 26234.6,
         :'Алйтай' => 32534.8
      }

      filtered = resorts.select do |key, value|
         value > 25000 && key.to_s[/^А/]
      end
      puts filtered
   end

   def self.task_two
      payment = [100, 200, 333, 200, 666, 101, 246, 245]

      search_hash = {
         payment: 0,
         index: -1
      }

      payment.each_with_index do |payment, index|
         if payment > search_hash[:payment]
            search_hash[:payment] = payment
            search_hash[:index] = index
         end
      end

      ap "Индекс максимальной выплаты: #{search_hash[:index]}, размер выплаты: #{search_hash[:payment]} у.е."
   end

   def self.task_three(string_index = 0)
      initial_hash = [%w(php paskal ruby paskal javascript paskal javascript ruby paskal asd ruby paskal driskal paraskal asd qwe zxc qwe asd zxc asd qwe asd php),
                      %w(Lorem Ipsum - это текст-"рыба", часто используемый в печати \
                        и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" \
                         для текстов на латинице с начала XVI века. В то время \
                         некий безымянный печатник создал большую коллекцию размеров\
                         и форм шрифтов, используя Lorem Ipsum для распечатки образцов. \
                        Lorem Ipsum не только успешно пережил без заметных изменений \
                           пять веков, но и перешагнул в электронный дизайн. \
                        Его популяризации в новое время послужили публикация \
                        листов Letraset с образцами Lorem Ipsum в 60-х годах и, \
                         в более недавнее время, программы электронной вёрстки \
                        типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.)
      ]
      result_hash = Hash.new(0)

      initial_hash[string_index].each do |lang|
         result_hash[lang] += 1
      end

      ap result_hash
   end

end
