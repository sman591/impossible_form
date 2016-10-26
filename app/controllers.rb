ImpossibleForm::App.controllers  do

  homepage = 'https://piedoom.github.io/impossible/'
  failed_homepage = "#{homepage}?email=failed"

  get '/' do
    redirect homepage
  end

  post '/submit' do
    redirect(failed_homepage) unless params['email']

    subscriber = Subscriber.new(email: params['email'])
    destination = subscriber.save ? homepage : failed_homepage
    redirect(destination)
  end

  get '/health' do
    'hello world'
  end

end
