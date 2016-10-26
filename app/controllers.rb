ImpossibleForm::App.controllers  do

  homepage = 'https://piedoom.github.io/impossible/'
  failed_homepage = "#{homepage}?email_failed=true"

  get '/' do
    redirect homepage
  end

  post '/submit' do
    redirect(failed_homepage) unless params['email']

    s = Subscriber.new(email: params['email'])
    destination = s.save ? homepage : "#{failed_homepage}?message=#{s.errors.full_messages.join(', ')}"
    redirect(destination)
  end

  get '/health' do
    'hello world'
  end

end
