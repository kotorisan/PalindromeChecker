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
  String miyu = new String();


  for (int umi = word.length()-1; umi >= 0; umi--)
  {
    if (Character.isLetter(word.charAt(umi)))
    {
      miyu += word.charAt(umi);
    }
  }

  if (miyu.equals(word))
  {
    return true;
  }
  return false;
}

