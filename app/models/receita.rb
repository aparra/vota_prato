class Receita < ActiveRecord::Base
  validates_presence_of :conteudo, :message => "deve ser preenchido"
end
