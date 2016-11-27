## rails��MVC

### ���[�e�B���O
  * ���[�U�[����̓��͂�URL�Ƃ��đ����Ă���
  * ���̏�񂩂�ǂ̃R���g���[���[�̂ǂ̃A�N�V�������𔻒f����
  * ���̂Ƃ��g������̂�`routes.rb`
    * config���ɂ���
    * ���̃t�@�C���ɂ�URL�ƃR���g���[���[�A�A�N�V�������Ή����ė񋓂���Ă���
      * `http://localhost:3000/hello`���J��������`booklist`�R���g���[����`hello`�A�N�V�������Ăяo�����
      ~~~
      Books::Application.routes.draw do

      get 'hello' => 'booklist#hello'
      get 'bye' => 'booklist#bye'
      
      end
      ~~~
      
### �R���g���[���[
  * ���[�U�[�̃u���E�U�Ɍ��ʂ�Ԃ��̂̓R���g���[���[
  * rails�̃A�N�V������controller�̒��ɂ���
  * �ÓI�ȃy�[�W��generate�X�N���v�g�ŃR���g���[���𐶐�����Ƃ��납��n�܂�
  * view���Ăяo���Ƃ��ɂ�
  ~~~
  class BooklistController < ApplicationController

    def hello
      render "booklist/hello"
    end
  end
  ~~~
  * �Ăяo���r���[���ȉ��̍\���̂Ƃ���render���ȗ��\
    * �uapp\views\�R���g���[����\�A�N�V������.html.erb�v

  
### �r���[
  * �r���[�͕ϐ�����ēn���ꂽ�f�[�^���HTML���쐬����
  * �쐬���ꂽHTML�̓R���g���[���[�ɓn��
  * �r���[�����[�U�[�Ƀf�[�^��Ԃ��Ă���킯�ł͂Ȃ�
  * ��{�̓R���g���[���[�Ƃ����ʐM���s��Ȃ�
  * �e���v���[�g���́u(�A�N�V������).html.erb�v
  
### 