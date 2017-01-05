public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763233829880753195251019011573834187930702154089149934884167509244761460668082264800168477411853742345442437107539077744992069";  
public void setup()  
{
	ans();
  	ans2();
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
		if(isPrime(dNum)==true){
			System.out.println("First prime is:"+digits);
			break;
		} 
	}   
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
  int dits = 0;
  int sum = 0;
  int count = 0;
  String group;
  String num;
  for(int f = 2;f<e.length()-10;f++){
    group = e.substring(f,f+10);
    for(int j = 0; j<10;j++){
      num = group.substring(j,j+1);
      dits = Integer.parseInt(num);
      sum = sum + dits;
    }
    if(sum==49){
        count++;
    }   
    if(count==5){
      System.out.println("f(5)="+group);
      break;
    }
    sum = 0;
  }
  return 0;
}