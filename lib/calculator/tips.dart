import 'dart:math';

var severelyUnderweightTips = ['Especialistas do Hospital de St. Michael\'s, no Canadá, afirmam que estar abaixo do peso apresenta mais riscos à saúde do que estar acima do peso. Para se obter um ganho de peso saudável, alimentos ricos em calorias não são a escolha correta, mas sim, aqueles com uma quantidade calórica equilibrada ricos em vitamina, proteína e principalmente carboidratos que contribuem no aumento de massa muscular, e que possuem pequenas taxas de gorduras trans e saturada.'
, ''];
var underweightTips = ['O melhor caminho para ganhar peso de forma saudável é aliar a prática de exercícios físicos que contribuam para o ganho de massa muscular (como musculação e crossfit), e uma alimentação balanceada (alimentos naturais e frescos, como cereais, frutas e legumes).'
, ''];
var normalTips = ['Parabéns pelo ótimo trabalho! Lembre-se que para manter o peso ideal é importante manter uma dieta balanceada (não basta apenas alimentos corretos, deve-ser levar em conta também as quantidades corretas).'
, ''];
var overweightTips = ['O melhor caminho para perder peso de forma saudável é aliar a prática de exercícios físicos que queimam calorias (como corrida e natação), e uma dieta balanceada. Não é necessário (e nem saudável) deixar de se alimentar durante longos períodos de tempo no intuito de emagrecer. Você apenas precisa comer os alimentos certos, na quantidade certa.'
, ''];
var obeseTips = ['Sua situação é grave. Recomendamos consultar um endocrinologista.'
, ''];

int getRange(var array) {
  var _random = new Random();
  return _random.nextInt(array.length - 1);
}