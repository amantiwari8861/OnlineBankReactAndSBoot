package convert;
public class ActualConversion
{
public ActualConversion(String inFile,String spath,String dpath,String thumbPath)
{
try
{
System.out.println("inFile="+inFile);
Runtime rt=Runtime.getRuntime();
System.out.println("rt="+rt);
int index=inFile.indexOf('.');

String thumbFile=inFile.substring(0,index);

String outFile=dpath+"\\"+inFile.substring(0,index);

inFile=spath+"\\"+inFile;
StringBuffer sbi=new StringBuffer(inFile);
sbi.insert(0,"\"");
int li=sbi.length();
sbi.insert(li,"\"");

StringBuffer sbo=new StringBuffer(outFile);
sbo.insert(0,"\"");
int lo=sbo.length();
sbo.insert(lo,"\"");
inFile=sbi.toString();
outFile=sbo.toString();

StringBuffer sbt=new StringBuffer(thumbPath+"\\"+thumbFile);
sbt.insert(0,"\"");
int lt=sbt.length();
sbt.insert(lt,"\"");
thumbPath=sbt.toString();

System.out.println("inpath="+inFile);
System.out.println("dpath="+outFile);
System.out.println("thumbpath="+thumbPath);

String flv="ffmpeg -i "+inFile+" -ab 56 -ar 22050 -b 2500000 -r 25 -s 320x240 "+outFile+".flv";
String swf="ffmpeg -i "+inFile+" -ab 56 -ar 22050 -b 2500000 -r 25 -s 320x240 "+outFile+".swf";
rt.exec(flv);
String thumb="ffmpeg -i "+inFile+" -s 320x240 "+thumbPath+".jpg"; 
System.out.println("flv="+flv);

rt.exec(swf);
System.out.println("swf="+swf);
rt.exec(thumb);
System.out.println("thumb="+thumb);

}
catch(Exception e)
{
System.out.println(e);
}
}
}