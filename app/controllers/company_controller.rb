class CompanyController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:success] = 'Company created'
      redirect_to @company
    else
      render 'new'
    end
  end

  def update
    if @company.update_attributes(company_params)
      redirect_to @company
    else
      render 'edit'
    end
  end

  def destroy
    Company.find(params[:id]).destroy
    flash[:success] = 'Company destroyed'
    redirect_to company_path
  end
end

private

  def company_params
    params.require(:company).permit(:name)
  end