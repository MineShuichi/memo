## rails���\�z

### �Q�l
* ���L�̃T�C�g���Q��
  * http://qiita.com/rinkun/items/0466932057b15fa0da7b
  * http://qiita.com/creamysellotape/items/010e4066d8a1907546d9
  * http://qiita.com/egopro/items/aba12261c053eecd6d19
  * https://www.qoosky.io/techs/8a0f1d8d9e
  * http://qiita.com/emadurandal/items/e43c4896be1df60caef0
    
### �O��
  * git�͓���Ă�������
  * ��{rbenv�݂̂�gem�ŃC���X�g�[������
    * git�������ق��̃p�b�P�[�W��rbenv�Ǘ����ꂽruby���Ƃ�gem�ŃC���X�g�[��
  
### rbenv�C���X�g�[��
  1. `git clone git://github.com/sstephenson/rbenv.git ~/.rbenv`
    * apt-get�g���Ă�����  
  2. `eval "$(rbenv init -)"`
  3. `rbenv versions`�Ńo�[�W�����m�F
    
### ruby�C���X�g�[��
  1. `git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build`
    * ruby-build�C���X�R�R�}���h
  2. `rbenv install 2.2.3`
    * �D����ruby�C���X�g�[��
  3. �C���X�g�[���ɐ���������`rbenv rehash`
  4. `rbenv local 2.2.3`,`rbenv rehash`�e�X���s
    * �v���W�F�N�g�Ŏg�p����ruby�o�[�W�����̎w��
    * ���ׂĂ̊��Ŏw�肷��Ƃ���`rbenv global 2.2.3`
    * rehash��Y��Ȃ�
  5. `ruby -v`�Ńo�[�W�����m�F
    
### bundler�C���X�g�[��
  1. ��قǃC���X�g�[������ruby��bundler���C���X�g�[������Ă��邩�m�F
    * `$ rbenv exec gem list`
  2. �Ȃ���΃C���X�g�[��
    * `$ rbenv exec gem install bundler`
    
### rails�C���X�g�[��(�V�K�v���W�F�N�g�쐬���͂������炷��)
  1. rails�v���W�F�N�g�����t�H���_���쐬
    * `mkdir �C�ӂ̖��O`
  2. �쐬�����t�H���_�Ɉړ����Ĉȉ�
    * `bundle init`
      * �V�X�e��ruby��gem�p�b�P�[�W��bundler�͑��݂��Ȃ�
      * ���̂���"rbenv exec" �Ŗ��L����K�v�͔����A�ȗ���
  3. Gemfile���ł��Ă���̂�`vim Gemfile`
    * ����`# gem "rails"`�̃R�����g�A�E�g���O��
  4. �v���W�F�N�g�Ǘ�����gem(rails)�C���X�g�[��
    * `$ bundle install --path vendor/bundle`
  5. �o�[�W�����m�F
    * `$ bundle exec rails -v`
      
### rails�v���W�F�N�g
  1. `bundle exec rails new .`
  2. Gemfile�̏㏑�����邩�ǂ���������邪�O�͕̂s�v�Ȃ̂ŏ㏑��
    * �����ŏ㏑�������rails��gem���Ȃ��Ȃ邱�Ƃɒ���
    * �����l�ŊJ������Ƃ���`bundle install`��rails������Ȃ��̂Ŋe���ō�邩�Agem�Ɍ�Œǉ�
    
    
### �G���[�Ή�
  * `ERROR: Failed to build gem native extension.`
    * `sudo apt-get install ruby2.1-dev(�����̓��O�ɏo�Ă���o�[�W����)`
      * `apt-cache search ruby | grep dev`�ŃC���X�g�[���\��dev�̐��K�\����T��
      
  * bundle install�G���[
    * sqlite
      * `apt-get install libsqlite3-dev`
    * uglifier
      * Gemfile��`#gem 'therubyracer', platforms: :ruby`�̃R�����g�A�E�g���O��
    
  * bundle install�œ��ꂽgem���폜������
    * http://qiita.com/sys_cat/items/16d55e7cd8a3f177863a
    * �菇
      1.bundle�ō폜
        * `$ bundle exec gem uninstall gemname`
          * "gemname"��"Gemfile"�ł��邱�Ƃ�����
      2.Gemfile����폜
        * Gemfile����Y��Gem�������폜
      3.Gemfile.lock����폜
        * `bundle update` �܂��� `bundle install`��Gemfile.lock�̒��g���X�V����
  
  * bundler�Ǘ�gem�̃C���X�g�[����
    * `bundle config`��������`gem environment`��gem�̃C���X�g�[����p�X��m���