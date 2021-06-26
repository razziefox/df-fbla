//converts time format from "0" to "00"
function df_convertTime(argument0){

	//if argument0 (the variable given from function) is equal or less then nine, then add the '0'. (ex. 9 -> 09).
	if argument0 <= 9 {
		
		//adds the '0' in front of the number, then return
		return  ("0" + string(argument0));
		
	} 
	
	//otherwise, just return back the given variable
	else return argument0;

}