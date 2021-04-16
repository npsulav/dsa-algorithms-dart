// Bubble Sort Algorithm Implemented in pure Dart
//


// This is a list of data that needs to be sorted
List list = [1,8,4,6,0,3,5,2,7,9];
final listLength = list.length;

void bubbleSort() {
   int temp;
   int i,j;
	
   bool swapped = false;
   
   // loop through all numbers 
   for(i = 0; i < listLength-1; i++) { 
      swapped = false;
		
      // loop through numbers falling ahead 
      for(j = 0; j < listLength-1-i; j++) {
        // print(list[j],list[j+1]);

         // check if next number is lesser than current no
         //   swap the numbers. 
         //  (Bubble up the highest number)
			
         if(list[j] > list[j+1]) {
            temp = list[j];
            list[j] = list[j+1];
            list[j+1] = temp;

            swapped = true;
         } 
			
      }

      //   if no number was swapped that means 
      //   array is sorted now, break the loop. 
      if(!swapped) {
         break;
      }

   }
	
}

void main() {
    print(list);
   bubbleSort();
    print(list);
}
