public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{
  int b = 0;
	ans();
  ans2();
  for(int d = 2; d<e.length();d++){
    b++;
  }
  System.out.println("b is"+b);
    noLoop();  
}  
public void draw()  
{   
	//not needed for this assignment
}  


public double ans(){
  int c=0;
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
    c++;
	} 
	System.out.println("Times:"+c);    
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

public double ans2(){
  double an =0;
  int dits = 0;
  int sum = 0;
  int count = 0;
  String group;
  String num;
  for(int f = 2;f<e.length()-10;f++){
    group = e.substring(f,f+10);
    for(int j = 0; j<group.length();j++){
      num = group.substring(j,j+1);
      dits = Integer.parseInt(num);
      an = Double.parseDouble(group);
      sum = sum + dits;
    }
    if(sum==49){
        count++;
        System.out.println(group);
        System.out.println(count);
    }
       //System.out.println(sum);
    //System.out.println(count);
    //if(count==5){
    //   //System.out.println(group);
    //    break;
    //}
    sum = 0;
  }
  
  return 0;
}