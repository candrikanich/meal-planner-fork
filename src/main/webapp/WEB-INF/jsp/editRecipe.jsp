<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="page-header">
<h2>Edit a Recipe</h2>
<p>Use this form to edit recipes in your library for meal planning.</p>
</div>

<c:url var="formAction" value="/users/${userName}/editRecipe">
<c:param name="userId" value="${param.userId}" />
</c:url>

<!-- RECIPE FORM: 1 ROW / 8 COL -->
<div class="row">
    <div class="col-md-8">
    
        <!-- FORM -->
        <form role="form" action="${formAction}" method="POST">
            <input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
            
            <div class="row">
                <div class="form-group form-group col-md-10">
                    <label for="recipeName">Recipe Name: </label>
                    <input type="text" id="recipeName" name="recipeName" class="form-control" value="${recipe.recipeName}" />   
                </div>
            </div>
            
            <div>
            
                <!-- INGREDIENT ROW -->
                <c:forEach  items="${recipeIngredients}" var="recipeIngredient">
                    <div class="form-group row ">
                        <div class="col-md-5">
                            <label for="ingredient">Ingredient </label> 
                            <select class="form-control input-sm" name="ingredientId0" id="ingredient">
                                    <option>${recipeIngredient.ingredientName}</option>
                                <c:forEach items="${allIngredients}" var="ingredient">
                                    <option id="addIngredient" value="${ingredient.ingredientId}">${ingredient.ingredientName}</option> 
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <label for="quantity">Quantity: </label>
                            <select class="form-control input-sm" name="quantityId0" id="quantity"> 
                                <option>${recipeIngredient.quantityName}</option>
                                <c:forEach items="${allQuantities}" var="quantity">
                                    <option value="${quantity.quantityId}">${quantity.quantityName}</option>
                                </c:forEach>
                            </select>
                        </div>
                        
                        <div class="col-md-3">
                            <label for="unit">Unit:</label>
                            <select class="form-control input-sm" name="unitId0" id="unit">
                                <option>${recipeIngredient.unit}</option>
                                <c:forEach items="${allUnits}" var="unit">
                                    <option value="${unit.unitId}">${unit.unitName}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-1">
                            <label>&nbsp;</label>
                            <button type="button" style="display: none" class="btn btn-default btn-remove"><span class="glyphicon glyphicon-minus-sign"></span></button>
                        </div>
                        
                        
                    </div>
                </c:forEach>
                <!-- End Ingredient Row -->
            
            </div>
            <!-- End GroupRow -->
            
            <div class="form-group form-group-lg">
                <label for="instructions">Instructions: </label>
                <textarea id="instructions" name="instructions" class="form-control">${recipeIngredient.instructions}</textarea>    
            </div>
        </form>
    </div>
    
    <div class="col-md-3">
        <strong>Add additional ingredients:</strong>
    </div>
    <form role="form" action="${formAction}" method="POST">
            <input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}" />
            
            <div class="groupRows">
            
                <!-- INGREDIENT ROW -->
                <div class="form-group row recipeIngredientRow">
                    <div class="col-md-5">
                        <label for="ingredient">Ingredient </label> 
                        <select class="form-control input-sm" name="ingredientId0" id="ingredient">
                                <option value="#">Choose an ingredient</option>
                            <c:forEach items="${allIngredients}" var="ingredient">
                                <option id="addIngredient" value="${ingredient.ingredientId}">${ingredient.ingredientName}</option> 
                            </c:forEach>
                        </select>
                    </div>
                    
                    <div class="col-md-3">
                        <label for="quantity">Quantity: </label>
                        <select class="form-control input-sm" name="quantityId0" id="quantity"> 
                            <option value="#">Choose...</option>
                            <c:forEach items="${allQuantities}" var="quantity">
                                <option value="${quantity.quantityId}">${quantity.quantityName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    
                    <div class="col-md-3">
                        <label for="unit">Unit:</label>
                        <select class="form-control input-sm" name="unitId0" id="unit">
                            <option value="#">Choose...</option>
                            <c:forEach items="${allUnits}" var="unit">
                                <option value="${unit.unitId}">${unit.unitName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    
                    <div class="col-md-1">
                        <label>&nbsp;</label>
                        <button type="button" style="display: none" class="btn btn-default btn-remove"><span class="glyphicon glyphicon-minus-sign"></span></button>
                    </div>
                    
                </div>
                <!-- End Ingredient Row -->
                <div class="col-md-2">
                    <label>+ Ingredient:</label>
                    <button type="button" class="btn btn-default btn-block btn-add"><span class="glyphicon glyphicon-plus-sign"></span></button>    
                </div>
            
            </div>
            <!-- End GroupRow -->
            
            
        </form>

    <div class="col-md-2">
        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign">&nbsp;</span>Add Recipe</button>
    </div>  
</div>
<c:import url="/WEB-INF/jsp/footer.jsp" />
