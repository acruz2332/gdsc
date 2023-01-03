List countWord(String a){
  a = a.toLowerCase(); //  lowering the text
  a = a.replaceAll(new RegExp(r'[^\w\s]+'),''); //removing punctuation or symbols
  final splitted = a.split(' ');
  var splittedSentence = new Map();
  for (var i = 0; i < splitted.length; i++){
    if (splittedSentence[splitted[i]] == null){
      splittedSentence[splitted[i]] = 1;
    }else{
      splittedSentence[splitted[i]] = splittedSentence[splitted[i]]+1;
    }
  }
  List things = [];
  splittedSentence.removeWhere((k, v) => v == 1); //removing words if those only appear once
  things = splittedSentence.keys.toList();
  return things;
}
void main() {
  print(countWord("The bright sun shone brightly in the clear blue sky as I walked through the bustling city streets, surrounded by towering skyscrapers and bustling crowds of people. The vibrant colors of the storefronts and advertisements seemed to pop against the bright blue sky, and the sounds of honking cars and chatter filled the air. As I walked, I couldn't help but feel a sense of excitement and energy, knowing that there was so much to see and do in this vibrant and lively city. Despite the chaos and noise, I felt at home in this bustling metropolis, and I couldn't wait to see what the day had in store for me."));
}
