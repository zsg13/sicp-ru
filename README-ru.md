# SICP
====

<img src="http://sicpebook.files.wordpress.com/2013/09/dreamsmile3.png"
 alt="Par dreaming and smiling" align="right" />

<b>Прямая ссылка: [sicp.pdf](https://github.com/sarabander/sicp-pdf/raw/master/sicp.pdf)</b>

Это PDF-версия книги «Структура и интерпретация компьютерных программ» (Structure and Interpretation of Computer Programs) авторов Гарольда Абельсона, Джеральда Джея Сассмана и Джули Сассман. Данная версия представляет собой дальнейшее развитие [Неофициального формата Texinfo](http://www.neilvandyke.org/sicp-texi/) (UTF), который изначально был создан на основе [HTML-версии](http://mitpress.mit.edu/sicp/) издательства MIT Press.

Наиболее значимое изменение в этой ревизии (2.andresraba5) — конвертация в LaTeX, что открывает возможности для дизайна и кастомизации, предоставляемые обширным архивом CTAN. Также теперь можно использовать современный движок вёрстки XeTeX вместе с преимуществами Unicode и OpenType.


## Исходные файлы
------

*Для пользователей macOS:* Шрифты Inconsolata LGC и Linux Libertine не входят в состав MacTex. Их необходимо установить отдельно. Скачайте шрифты Inconsolata LGC [здесь](https://github.com/MihailJP/Inconsolata-LGC/downloads), а шрифты Linux Libertine — [здесь](http://sourceforge.net/projects/linuxlibertine/files/linuxlibertine/5.3.0/LinLibertineOTF_5.3.0_2012_07_02.tgz/download). Чтобы установить шрифты для всей системы, переместите все загруженные файлы `.otf` в папку `/Library/Fonts`. После выполнения этих действий продолжите согласно инструкциям ниже.

Каталог `src` содержит исходные файлы как в формате Texinfo, так и в LaTeX. Чтобы перекомпилировать книгу, перейдите в этот каталог и выполните:

```bash
$ make
```

Файл `preamble.tex` содержит все конфигурационные параметры и объявления стилей. Обратите внимание: файл LaTeX `sicp.tex` будет сгенерирован автоматически, перезаписывая предыдущую версию. Чтобы поддерживать синхронизацию между `sicp.texi` и `sicp.tex`, вносите изменения в `sicp.texi`, который уже представляет собой гибридный файл с кодом Texinfo и LaTeX. Это допустимо, поскольку весь контент, не относящийся к Texinfo, остаётся неизменным при обработке скриптом.

Вероятность успешной компиляции возрастает, если у вас установлена практически полная версия недавнего дистрибутива TeX Live (данный PDF был скомпилирован с использованием версии 2012 года). Необходимые шрифты OpenType должны быть установлены в операционной системе. Также вам понадобится Inkscape для повторного создания PDF-изображений из SVG-файлов.

Если компиляция прерывается с ошибкой «LaTeX Error: Too many unprocessed floats.», можно попробовать увеличить ширину и высоту текстовой области в [файле preamble](https://github.com/sarabander/sicp-pdf/blob/master/src/preamble.tex#L70-L71). Более новые версии TeX Live или обновлённые шрифты могут иметь иные метрики символов, из-за чего некоторые рисунки перестанут помещаться. Эта проблема описана в обращении [#5](https://github.com/sarabander/sicp-pdf/issues/5).

Для очистки после сборки:

```bash
$ make clean
```

Эта команда удаляет временные файлы, созданные в процессе формирования sicp.pdf, включая сам файл sicp.pdf. Если вы хотите сохранить его, переместите в корневой каталог.

Чтобы удалить все сгенерированные PDF-файлы и вспомогательные файлы во всём дереве каталога `src`:

```bash
$ make clean-all
```

## Благодарности
----------------

* Lytha Ayth
* Neil Van Dyke
* Gavrie Philipson
* J. E. Johnson
* Mingshen Sun
* holomorph
* Narumi Katoh
* tfgit
* Brian Wignall
* dine2014

## Лицензия
-------

Файлы `sicp.texi`, `sicp.pdf` и диаграммы в каталоге `src/fig` распространяются под лицензией Creative Commons Attribution-ShareAlike 4.0 International ([cc by-sa](http://creativecommons.org/licenses/by-sa/4.0/)).
          
Скрипты `ex-fig-ref.pl`, `survey.rb` и `texi-to-latex.pl` распространяются под лицензией GNU General Public License версии 3 (подробности см. в файле src/LICENSE).

## Связанный проект
--------------

Доступна новая [версия в формате HTML5](https://github.com/sarabander/sicp), которая предоставляет преимущества изменяемого размера шрифта и адаптивного текста для удобного чтения на мобильных устройствах.

## Переводы
-----------

Существует новый [японский перевод](https://github.com/minghai/sicp-pdf/) PDF-версии, выполненный Наруми Като. Приятно видеть, как коллекция пополняется новыми языками!
