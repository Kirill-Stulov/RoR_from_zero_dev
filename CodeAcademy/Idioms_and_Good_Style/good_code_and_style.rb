# Занятие №8. Идиомы в Ruby и хороший стиль (46:50)
# ХОРОШИЙ КОД И СТИЛЬ

# Хороший код: 
# Легко читаем
# Прост (Принцип KISS keep it simple stupid)
# Нет дублирования (принцип DRY)
# Следует соглашениям о стиле
  # Ruby Style Guide (49:10) -> https://github.com/rubocop/ruby-style-guide
                              # -> https://github.com/arbox/ruby-style-guide/blob/master/README-ruRU.md  (перевод на русс)
  # руководство по стилю написания программ на Ruby
  # сбор правил, советов, методик и идиом, которые ведут к хорошему коду 

  # RuboCop - стилистический анализатор кода (1:05:20)
    # help you automatically check Ruby code against this guide.
    # rubocop installation and usage (1:06:35)
    # rubocop usage https://vimeo.com/124210939/ffdb74e6f5  (20:40)
      # onenote:///C:\Users\kirill.stulov\Desktop\One\All\NIX\Курсы.one#8.%20Идиомы%20Ruby%20и%20хороший%20стиль%20&section-id={8D80935D-49D5-4AB3-8EFD-24FE320EE4B7}&page-id={49AAAD32-E533-441F-83FC-F8F7F4B94776}&end
      # Отключение части кода от проверок (33:34)
  # Если при установке RuboCop ругается на сертификат, нужно обновить сертификат GlobalSignRootCA.pem в папке c:\RailsInstaller\Ruby2.3.3\lib\ruby\2.3.0\rubygems\ssl_certs\
  # Скачать его можно тут https://raw.githubusercontent.com/rubygems/rubygems/master/lib/rubygems/ssl_certs/rubygems.org/GlobalSignRootCA_R3.pem
  # Инструкция тут: https://bundler.io/guides/rubygems_tls_ssl_troubleshooting_guide.html#updating-rubygems
