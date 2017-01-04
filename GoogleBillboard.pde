public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{
	ans();
    noLoop();  
}  
public void draw()  
{   
	//not needed for this assignment
}  


public double ans(){
	String digits;
	double dNum = 0;
	for(int i = 2;i<e.length()-10;i++){
		digits = e.substring(i,i+10);
		dNum = Double.parseDouble(digits);
		//System.out.println(dNum);  
		if(isPrime(dNum)==true){
			System.out.println(dNum);
			break;
		}
		if(fFive(dNum)==5){
			System.out.println(dNum);
			break;
		}
	} 
	//System.out.println(dNum);    
	return(dNum);  
}

public boolean isPrime(double dNum)  
{   
    double num = dNum;//to be finished later 
    for(double i = 0; i<Math.sqrt(num); i++){
      if(num%(i+2)==0){
        return(false);
      }
    }  
    return true;  
} 
public double fFive(double dNum){

}