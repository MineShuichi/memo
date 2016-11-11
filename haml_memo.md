## haml����

### �Q�l
  * http://log.nissuk.info/2012/05/haml-haml.html
  * http://qiita.com/shizuma/items/75b160bc43c65787f3a1
  * http://morizyun.github.io/blog/beginner-rails-tutorial-haml/
  * http://ruby-rails.hatenadiary.com/entry/20141001/1412097051
  * http://qiita.com/satomyumi/items/b58888506e41d1370fd1

### ��
  * HTML Abstraction Markup Language
  
### ����
  * Gemfile�ɒǉ�����bundle install
    * `gem 'haml-rails'`

### haml�������̎��
  * �ȉ��S����������
    * %a(href="http://example.com" title="title")
    * %a{"href"=>"http://example.com", "title"=>"title"}
    * %a{:href=>"http://example.com", :title=>"title"}
    * %a{href:"http://example.com", title:"title"}
    
### html�Ƃ̔�r
  * haml
  ~~~
  %div{id: "my-id"} Contents
  %dev{class: "my-class"} Contents
  ~~~
  
  * html�ɕϊ����ꂽ�Ƃ�
  ~~~
  <div id="my-id">
    Contents
  </div>
  <div class="my-class">
    Contents
  </div>
  ~~~
  
### Ruby�̕ϐ����g��
  * haml
  ~~~
  - hoge = "fuga"
  - hagu = 'like'
  %div{class: hoge}
    test message is #{hoge}
    = hagu
  ~~~
  
  * html
  ~~~
  <div class="fuga">
    test message is fuga
    like
  </dev>
  ~~~
  
### erb�Ƃ̔�r
  * haml
  ~~~
  !!! 5
  %html
    %head
      %title HamlTest
      = stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true
      = javascript_include_tag 'application', 'data-turbolinks-track' => true
      = csrf_meta_tags

    %body

    = yield
  ~~~
  
  * erb
  ~~~
  <!DOCTYPE html>
  <html>
  <head>
    <title>SlimTest</title>
    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
    <%= csrf_meta_tags %>
  </head>
  <body>

  <header id="header">
    <h1 class="title logo">Slim Test</h1>
  </header>

  <%= yield %>

  </body>
  </html>
  ~~~
  
### erb����haml�ւ̊ȒP�Ȋo����
  * `<, >, <%, %>`���^�O����폜���A`%`���^�O�̒��O�ɂ���
  * ���^�O�����ׂč폜
  * `<%= ... >`��`=`�ɂ���
  * class������id�����́A%p.fields��%p#contents�Ȃǂɂ���
    * �^�O��div�̂Ƃ���div���ȗ���#content�ƋL�ڂł���
  * class������id�����ȊO��href��img�Ȃǂ̑�����ǉ��������ꍇ�̓n�b�V���ŋL��
    * `%a{:href => "#"} �����Ƀ����N�̃e�L�X�g }`
  * �R�����g��`/`�������html�ɕ\������Ȃ�
  
### �ϊ�web�T�[�r�X
  * erb,html => haml
    * http://html2haml.herokuapp.com/