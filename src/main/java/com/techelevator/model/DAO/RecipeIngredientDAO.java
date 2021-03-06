package com.techelevator.model.DAO;

import java.util.List;

import com.techelevator.model.RecipeIngredientRecord;

public interface RecipeIngredientDAO {

	public List<RecipeIngredientRecord> getAllRecipeIngredientRecordsByRecipeIdAndUserId(int recipeId, int userId);
	
	public void addRecipeIngredientRecordToRecipe(RecipeIngredientRecord record, int recipeId);
	
//	void saveRecipeIngredientRecord(int recipeId, int ingredientId);
	
	public void removeIngredientsFromRecipe(int recipeId);
	
	public void updateRecipe(int ingredientId, String ingredientName);

}
