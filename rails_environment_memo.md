## rails���\�z
  * ���L�̃T�C�g���Q��
    * http://qiita.com/rinkun/items/0466932057b15fa0da7b
    * http://qiita.com/creamysellotape/items/010e4066d8a1907546d9
    
  * �O��
    * git�͓���Ă�������
  
  * rbenv�C���X�g�[��
    1. `git clone git://github.com/sstephenson/rbenv.git ~/.rbenv`
      * apt-get�g���Ă�����  
    2. `eval "$(rbenv init -)"`
    3. `rbenv versions`�Ńo�[�W�����m�F
    
  * ruby�C���X�g�[��
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
    
  * bundler�C���X�g�[��
    1. ��قǃC���X�g�[������ruby��bundler���C���X�g�[������Ă��邩�m�F
      * `$ rbenv exec gem list`
    2. �Ȃ���΃C���X�g�[��
      * `$ rbenv exec gem install bundler`
    