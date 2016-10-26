ImpossibleForm::App.controllers  do

  homepage = 'https://piedoom.github.io/impossible/'

  get '/' do
    redirect homepage
  end

  post '/submit' do
    subscriber = Subscriber.new(email: params['email'])
    destination = subscriber.save ? homepage : "#{homepage}?email=failed"
    redirect(destination)
  end

  get '/health' do
    'hello world'
  end

end
