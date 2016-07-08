class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])        
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new    
    @recipe.ingredients.build
    @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.create(title: params[:recipe][:title], ingredients_attributes: params[:recipe][:ingredients_attributes])
    redirect_to @recipe
  end
end
