class SubjectsController < ApplicationController
  # GET
  # Show all Items
  def index
    @subject = Subject.sorted
    render('index')
  end

  # GET
  # Show item with :id
  def show
    @subject = Subject.find(params[:id])
  end

  # GET
  # Show new form
  def new
    @subject = Subject.new({:name => "Default"})
  end

  # POST
  # Create an Item
  def create
    #Instantiate a new object using form parameters
    require 'uri'
    require 'net/http'

    puts('------Parameters------')
    puts(params)
    puts('------Name------')
    puts(params['name'])
    puts('------------')

    params = {'subject' => "Test Subject from Rails Controller", 'message' => 'Test Message from Rails Controller', 'person_email' => 'JesseShawCodes@gmail.com' }

    puts("Those Params!!!")

=begin
    begin
      url = URI.parse('https://help.ginkgo-plus.dev/api/tickets')
      puts(url.host)
      puts(url.path)
      puts(url.port)
      puts('Lets see if there are any values above...')
      req = Net::HTTP::Post.new(url, {'X-DeskPRO-API-KEY' => '1:CMZ8MZAA8RQR2D9H5SMQWQD4R'})
      puts("Undefined http???")
      req.body = {'subject' => "Test Subject from Rails Controller", 'message' => 'Test Message from Rails Controller', 'person_email' => "JesseShawCodes@gmail.com" }
      res = https.request(req)
      puts("I think it works???")
    rescue => e
      puts("Failed: Ahhh bummer. It's broke")
      puts("#{e}")
    end

    # x = Net::HTTP.post_form(URI.parse('https://help.ginkgo-plus.dev/api/tickets'), params)
    # puts x.body

    @subject = Subject.new(params[:subject])

    #Save the object
    if @subject.save
      redirect_to(subjects_path)
    else
      render('new')
    end
=end
  end

  # GET
  # Show Edit form for item with :id
  def edit
  end

  # PATCH
  # Update item with :id
  def update
  end

  # GET
  # Show Delete Form for item with :id
  def delete
  end

  # DELETE
  # Delete it with :id
  def destroy
  end
end
