// I Write the sudo code in cpp format just to get coloring features of any IDE as I don't know R for now
#include <bits/stdc++.h>
using namespace std;




void load_data(&data){
	/*
		Steps in this function:
			1) load the data to data var
			2) rename the coloms to be A,B,C,D,.........
			3) for each element in each colom change the value from integer value x to be ==> string (name_of_the_col+integer_value_we_want)
	*/
}


void get_unique_values(unique_value){
	//assuming all vars are global
	set<string> unique_value;
	for(int i=0;i<no_of_rows;i++){
		for(int j=0;j<no_of_col;j++){
			unique_value.insert(data[i][j]);
		}
	}
	/*
		this will return array has all the unique values
	*/
}


double get_support(int level,int array){
	//this is the most difficult function in the code 
	/*
		it takes level as the size of the array it means how many elements do we have in this array
		for example if we have 1 element
		so it works like:
			ex: element is A5
			so as element[0]=='A'
			it applay this for loop:
	*/
				int count=0;
				for(int i=0;i<no_of_rows;i++){
					if(data[A]==elemnt){
						count++;
					}
				}
			return count/number_of_rows;

	//===================================================
	/*
		The last example was for easy version suppose we has array that has these elements
		array={A0,B6,G8}
		the code should be like this
	*/
		int count =0;
		for(int i=0;i<no_of_rows;i++){
					bool ok=true;
					for(int pos=0;pos<size(array);pos++){
						char c=array[pos][0];
						if(data[i]!=array[pos]){
							ok=false;
						}
					}
					if(ok){
						count++;
					}
				}
		/*
			What was I doing in the  last example :
				1) I loop on each row
				3) I check that if each element in the array equal the value of corresponding colom 
				4) increase counter
		*/
		return count/number_of_rows;
}	


void create_new_compinations_for(int level){
	// this is one of the hardest parts in the code as you will need to create unrepeated compinations
	set<arrays> s;
	for(int i=0;i<size(unique_value);i++){
		if(stay_with_us_in_calculating[i]){
			//this mean that this element is with us 
			//expexted to add her==>
			/*
				Code to:
					1) search for other elements that still with us 
					2) create array of these elements and push it in s
					3) avoid putting array that has value from same col like A0,A3 for example 
			*/
		}
	}
}

int main(){
	
	int min_support;
	cin>>min_support;


	//part (1) just read the data
	int no_of_rows,no_of_col;
	array data=[no_of_rows][no_of_col];
	load_data(data);

	//part (2) to get the unique values
	array unique_value;
	get_unique_values(unique_value);


	//part(3) to make bool array to tell us which values are still with us in each level
	bool stay_with_us_in_calculating[size(unique_value)];
	for(int i=0;i<size(stay_with_us_in_calculating);i++){
		stay_with_us_in_calculating[i]=false;
		//it means that we use all the unique values at the beganing of the code
	}


	//part (4) this is the most difficult part as this is the main algorithm
	array rem=unique_value; 
		// this array will have the compination that I will loop for it 
		// It is array o arrays for example it start with all unique values 
		// in the second loop it will contain couple of remaning values 
	array scores;
		//this contain scores in the rem values
	int level=1;

	array old_rem;
	//will need it at the end


	while(size(rem)!=0){

		//here I calculate scores for the array that has all compinations in current level
		for(int i=0;i<size(rem);i++){
			scores[i]=get_support(level,rem[i]);
		}

		//next part to remove the elments that we don't need in next level
		for(int i=0;i<size(rem);i++){
					for(int j=0;j<size(rem[i]);j++){
							element=rem[i][j]
							stay_with_us_in_calculating[element]=true;
					}
		}

		//make everything ready for the next iteration
		old_rem=rem;
		rem=new empty array;
		rem=create_new_compinations_for(level+1);
		for(int i=0;i<size(stay_with_us_in_calculating);i++){
			stay_with_us_in_calculating[i]=false;
		}
		level++;
	}

	//continue work here to get the rules from the last old_rem array
}