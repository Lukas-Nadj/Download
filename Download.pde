import processing.net.*; 

byte[] data = new byte[0];

for (int i  = 1; i<14; i++){
   //print("Downloading Part "+str(i)+"   https://ipaudio4.com/wp-content/uploads/BAG/How%20to%20Invent%20Everything/0"+trim(str(i))+".mp3?_="+str(i)+"....");
   if(i<10){
   data = loadBytes("https://ipaudio4.com/wp-content/uploads/BAG/How%20to%20Invent%20Everything/0"+trim(str(i))+".mp3?_="+trim(str(i)));
   } else {
   data = loadBytes("https://ipaudio4.com/wp-content/uploads/BAG/How%20to%20Invent%20Everything/"+trim(str(i))+".mp3?_="+trim(str(i)));
   }
   saveBytes("How to invent everything part "+trim(str(i))+".mp3", data);
   println("Done!");
}
