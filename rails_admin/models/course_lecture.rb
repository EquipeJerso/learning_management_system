config.model 'CourseLecture' do
  parent 'Course'
  weight -2

  edit do
    field :content_type, :enum do
      enum { CourseLecture::CONTENT_TYPE_ENUM.sort}
    end
    field :name
    field :description, :text do
      help "Conteúdo que aparecerá caso não seja uma lição em vídeo."
    end
    field :course do
      inline_add false
      inline_edit false
    end
    field :video
  end
end