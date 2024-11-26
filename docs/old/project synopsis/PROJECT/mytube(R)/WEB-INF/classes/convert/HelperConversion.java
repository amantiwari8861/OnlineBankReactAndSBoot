package convert;
//import dbbean.*;
public class HelperConversion
{
public String path,dpath,thumbPath,fname,title,category,type;
public boolean getInputInfo()
{
try
{
new ActualConversion(fname,path,dpath,thumbPath);
return true;
}
catch(Exception e)
{
System.out.println(e);
return false;
}
}
}