class CompaniesController < ApplicationController

  def index
    # find all Company rows
    # render companies/index view
    @companies = Company.all 
  end

  def show
    # find a Company
    # render companies/show view with details about Company
    @companies = Company.all
    @company_id = params["id"]
    @companies_row = @companies.find_by({"id" => @company_id})
    @companies_name = @companies_row["name"]
    @companies_state = @companies_row["state"]
    @companies_city = @companies_row["city"]

    @contacts = Contact.all
    @contacts_row_array = @contacts.where({"company_id" =>@company_id})

  end

  def new
    # render view with new Company form
  end

  def create
  #   # start with a new Company
    @company_new_row = Company.new
  #   # assign user-entered form data to Company's columns
    @company_new_row["name"] = params["name"]
    @company_new_row["city"] = params["city"]
    @company_new_row["state"] = params["state"]
  #   # save Company row
    @company_new_row.save
  #   # redirect user
    redirect_to "/companies"
  end






  # def edit
  #   # find a Company
  #   # render view with edit Company form
  # end

  # def update
  #   # find a Company
  #   # assign user-entered form data to Company's columns
  #   # save Company row
  #   # redirect user
  # end

  # def destroy
  #   # find a Company
  #   # destroy Company row
  #   # redirect user
  # end

end
