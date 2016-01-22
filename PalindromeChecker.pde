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
  String kuro = new String();
  for (int umi = word.length()-1; umi >= 0; umi--) // makes no spaces and special characters
  {
    if (Character.isLetter(word.charAt(umi)))
    {
      miyu += word.charAt(umi);
    }
  }
  for (int asuna = 0; asuna < word.length(); asuna++) //makes original word/phrase no spaes and special characters
  {
    if (Character.isLetter(word.charAt(asuna)))
    {
      kuro += word.charAt(asuna);
    }
  }
  
  if (miyu.toLowerCase().equals(kuro.toLowerCase())) // checks for palidrome
  {
    return true;
  }
  return false;
}

