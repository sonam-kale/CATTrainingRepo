###########################################################
# Copyright 2020, Tryon Solutions, Inc.
# All rights reserved.  Proprietary and confidential.
#
# This file is subject to the license terms found at 
# https://www.cycleautomation.com/end-user-license-agreement/
#
# The methods and techniques described herein are considered
# confidential and/or trade secrets. 
# No part of this file may be copied, modified, propagated,
# or distributed except as authorized by the license.
###########################################################
# Name: Sonam Gund
# Date: 
# Description: This scenario will start by using a While 
#  loop to construct a simple exponential calculator. To 
#  do this, we'll need to keep track not just of our 
#  math, but also the number of loops we have performed. 
############################################################ 

Feature: Exponential Statement

Background: Define variables
Given I import scenarios from "Utilities\Exponent utilities.feature"
And i assign 2 to variable "base"
And i assign 1 to variable "result"
and i assign 3 to variable "exponent"
And i  assign 1 to variable "counter"
And i assign 10 to variable "limit"
And I assign "" to variable "phrase1"

@instructions @1
Scenario: Featuring our File
Given I "update the Feature File Header with my name and the current date"

@instructions @2
############################################################ 
# Remember that you can call a variable by using its name 
#  preceded by a $-sign, such as $example or $userName
############################################################ 
Scenario: The Definitions of Variables
Given I "see the Background"
When I "define a variable named 'base' to contain the base number to be multiplied and set it to a number (Suggestion: 2)"
And I "define a variable named 'result' to contain the number 1"
And I "define a variable named 'exponent' to contain the power to which the base number will be raised (Suggestion: 3)"
And I "define a variable named 'counter' that is set to 1"





@instructions @3
############################################################ 
# Cycle has the ability to repeat groups of Steps using 
#  While loops. Cycle will repeat all the Steps between 
#  the While and the EndWhile keywords until the Conditional 
#  Step fails. When the conditional Step fails, execution 
#  will continue at the first Step after the EndWhile. 
############################################################ 

# And I "add a step within that while-loop that multiplies $result by $base"
# And I "add a step within that while-loop at the end that increases $counter by 1 at the end of the loop or I will be stuck in the loop forever!"
# Then I "echo the result of line 51 so that I can see it in the side panel"
# #When I convert string variable "<STRING_VARIABLE_NAME>" to <INTEGER|DOUBLE> variable "<NUMBER_VARIABLE_NAME>"
# While I verify number "counter" is greater than or equal to <NUMBER>
# EndWhile
@instructions @4
############################################################ 
# Cycle has the ability to use If / Else / ElsIf structures. 
#  This allows us to perform functions if certain 
#  assumptions. Additionally, if those assumptions are not 
#  true, we can decide to have default functionality
############################################################ 
Scenario: Asking What if
Given I "do not want to risk overflowing my calculations so I want to limit both $base and $exponent to no more than 10"
When I "wrap that while-loop in an if-statement that checks that $base is less than or equal to 10"
And I "extend the initial If statement by adding an And statement just below the initial If statement that checks that exponents is less than or equal to 10, which will look like the following:"
	If I "verify something"
    And I "verify something else"
    	Then I "put the While loop here"
        	Given I "do something in the While Loop"
        And I "put the EndWhile here"
    EndIf

@insructions @5
Scenario: Getting Wordy
Given I "want to build a phrase that builds on itself upon each turn of the while loop"
When I "add a new variable to the Background that is equal to 'this sentence goes on '"
And I "append the phrase 'and on ' onto that variable within the WhileLoop just before the counter increases"

@instructions @6
Scenario: Putting it all together
Given I "want to update the echo statement created in scenario 'Stay a While' so that it states all the information we've built"
When I "change the echo statement to read more like '<base variable> raised by <exponential variable> is equal to <result> and <the constructed sentence>'"
If I "want a challenge"
	Then I "can use a single Cycle step to make the echo say all that information in a single statement."
    And "I do not need to append all of it to a single variable."
EndIf

@exercise
Scenario: Exponential Statement

If I verify number $base is less than or equal to $limit
	And I verify number $exponent is not equal to $limit
    Then I Execute scenario "Calculating Exponent"
    Then I echo "Base"  $base "& Exponent=" $exponent
    Then I echo "result" $result
    Then I echo "Base"  $base "& Raised by Exponent" $exponent "is equal to " $result "and constructed phrase" $phrase1
    Then I assign variable "full_Res" by combining "Base"  $base "& Raised by Exponent" $exponent "is equal to " $result "and constructed phrase" $phrase1
    Then I echo $full_Res
EndIf