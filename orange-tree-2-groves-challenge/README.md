# Orange Tree 2 Groves 
 
##Learning Competencies 

* Working with inheritance in OO programing

##Summary 

 We've built a simple model of a single fruit and a single fruit tree with our `Orange` and `OrangeTree` classes.  Let's expand it to a whole grove with multiple kinds of trees.

By the end we'll have classes like `FruitGrove`, `AppleTree`, and `PearTree`.


##Releases

###Release 0 : The `AppleTree` and `Apple` Classes

Let's start by defining `AppleTree` and `Apple` classes.  They should behave the same as `OrangeTree`, although have a different life cycle.

That is, they should support all the same methods, but the particularities might differ: apples have a smaller diameter but apple trees bear fruit sooner and bear more fruit when they do.

Creating the `Apple` and `AppleTree` class at this stage shouldn't involve much more than copying your `Orange` and `OrangeTree` classes and changing a few variables or constants.  If it's more complicated than that ask for help!

###Release 1 : The `FruitTree` and `Fruit` Classes

You now have two kinds of trees which each bear their own fruits.  They have tons of code in common.  One way to deal with this repetition is to **abstract out** the common parts into a parent class.  We'll call that parent class `FruitTree`, so your `OrangeTree` class should now look like:

```ruby
class OrangeTree < FruitTree
  # code goes here
end
```

Think carefully about the parameters that make an orange tree different from an apple tree.  They might include parameters like

1. How much the tree grows each year
2. How old the tree must be before it stops growing
3. How old the tree must be before it bares fruit
4. How much fruit the tree yields each year
5. Maybe most importantly, what *kind* of fruit it bares

There could be others, but this gives you an idea of some of the "parameters" that differentiate one fruit tree's behavior from another.

#### The `PearTree` and `Pear` Classes

Now that you have `FruitTree` and `Fruit` classes, create a `PearTree` class that yields `Pears`, just like `OrangeTree` and `AppleTree`.

###Release 2 : Create a `TreeGrove` Class

Let's plant some trees!  Create a `TreeGrove` class that works as follows.

1. You can initialize a `TreeGrove` with an `Array` of any kind of `FruitTree`, of any age.
2. There is a `TreeGrove#age!` method will will age each tree in the grove one year by calling `age!` on each `FruitTree`.
3. There is a `TreeGrove#trees` method which returns all trees
4. There is a `TreeGrove#mature_trees` method which returns all trees that can currently bear fruit
5. There is a `TreeGrove#dead_trees` method which returns all dead trees
 

<!-- ##Optimize Your Learning  -->

##Resources