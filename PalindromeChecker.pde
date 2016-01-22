public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String pal = new String();
  String palin = new String();
  String palinCheck = new String();

  for (int i = 0; i <word.length(); i++)
  {
    pal = pal + word.substring(i,i+1).toLowerCase(); 
  } 
  for (int j = 0; j < pal.length(); j++)
  {
    if (Character.isLetter(pal.charAt(j)))
    {
      palin = palin + pal.charAt(j);
    }
  }
  for (int i = palin.length()-1; i >= 0; i--)
      {
        palinCheck = palinCheck + palin.charAt(i);
      }
  if (palinCheck.equals(palin))  
    {
    return true;
    }
  return false;
}


