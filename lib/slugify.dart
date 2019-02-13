library slugify2;

class Slugify {

  String _delimiter;
  bool _lowercase;
  Map<String, String> _replacements = {
    '¹': '1',
    '²': '2',
    '³': '3',
    'º': 'o',
    '°': '0',
    'æ': 'ae',
    'ǽ': 'ae',
    'À': 'A',
    'Á': 'A',
    'Â': 'A',
    'Ã': 'A',
    'Å': 'A',
    'Ǻ': 'A',
    'Ă': 'A',
    'Ǎ': 'A',
    'Æ': 'AE',
    'Ǽ': 'AE',
    'à': 'a',
    'á': 'a',
    'â': 'a',
    'ã': 'a',
    'å': 'a',
    'ǻ': 'a',
    'ă': 'a',
    'ǎ': 'a',
    'ª': 'a',
    '@': 'at',
    'Ĉ': 'CX',
    'Ċ': 'C',
    'ĉ': 'cx',
    'ċ': 'c',
    '©': 'c',
    'Ð': 'Dj',
    'Đ': 'Dj',
    'ð': 'dj',
    'đ': 'dj',
    'È': 'E',
    'É': 'E',
    'Ê': 'E',
    'Ë': 'E',
    'Ĕ': 'E',
    'Ė': 'E',
    'è': 'e',
    'é': 'e',
    'ê': 'e',
    'ë': 'e',
    'ĕ': 'e',
    'ė': 'e',
    'ƒ': 'f',
    'Ĝ': 'GX',
    'Ġ': 'G',
    'ĝ': 'gx',
    'ġ': 'g',
    'Ĥ': 'HX',
    'Ħ': 'H',
    'ĥ': 'hx',
    'ħ': 'h',
    'Ì': 'I',
    'Í': 'I',
    'Î': 'I',
    'Ï': 'I',
    'Ĩ': 'I',
    'Ĭ': 'I',
    'Ǐ': 'I',
    'Į': 'I',
    'Ĳ': 'IJ',
    'ì': 'i',
    'í': 'i',
    'î': 'i',
    'ï': 'i',
    'ĩ': 'i',
    'ĭ': 'i',
    'ǐ': 'i',
    'į': 'i',
    'ĳ': 'ij',
    'Ĵ': 'JX',
    'ĵ': 'jx',
    'Ĺ': 'L',
    'Ľ': 'L',
    'Ŀ': 'L',
    'ĺ': 'l',
    'ľ': 'l',
    'ŀ': 'l',
    'Ñ': 'N',
    'ñ': 'n',
    'ŉ': 'n',
    'Ò': 'O',
    'Ô': 'O',
    'Õ': 'O',
    'Ō': 'O',
    'Ŏ': 'O',
    'Ǒ': 'O',
    'Ő': 'O',
    'Ơ': 'O',
    'Ø': 'O',
    'Ǿ': 'O',
    'Œ': 'OE',
    'ò': 'o',
    'ô': 'o',
    'õ': 'o',
    'ō': 'o',
    'ŏ': 'o',
    'ǒ': 'o',
    'ő': 'o',
    'ơ': 'o',
    'ø': 'o',
    'ǿ': 'o',
    'œ': 'oe',
    'Ŕ': 'R',
    'Ŗ': 'R',
    'ŕ': 'r',
    'ŗ': 'r',
    'Ŝ': 'SX',
    'Ș': 'S',
    'ŝ': 'sx',
    'ș': 's',
    'ſ': 's',
    'Ţ': 'T',
    'Ț': 'T',
    'Ŧ': 'T',
    'Þ': 'TH',
    'ţ': 't',
    'ț': 't',
    'ŧ': 't',
    'þ': 'th',
    'Ù': 'U',
    'Ú': 'U',
    'Û': 'U',
    'Ũ': 'U',
    'Ŭ': 'UX',
    'Ű': 'U',
    'Ų': 'U',
    'Ư': 'U',
    'Ǔ': 'U',
    'Ǖ': 'U',
    'Ǘ': 'U',
    'Ǚ': 'U',
    'Ǜ': 'U',
    'ù': 'u',
    'ú': 'u',
    'û': 'u',
    'ũ': 'u',
    'ŭ': 'ux',
    'ű': 'u',
    'ų': 'u',
    'ư': 'u',
    'ǔ': 'u',
    'ǖ': 'u',
    'ǘ': 'u',
    'ǚ': 'u',
    'ǜ': 'u',
    'Ŵ': 'W',
    'ŵ': 'w',
    'Ý': 'Y',
    'Ÿ': 'Y',
    'Ŷ': 'Y',
    'ý': 'y',
    'ÿ': 'y',
    'ŷ': 'y',
    'Ъ': '',
    'Ь': '',
    'А': 'A',
    'Б': 'B',
    'Ц': 'C',
    'Ч': 'Ch',
    'Д': 'D',
    'Е': 'E',
    'Ё': 'E',
    'Э': 'E',
    'Ф': 'F',
    'Г': 'G',
    'Х': 'H',
    'И': 'I',
    'Й': 'J',
    'Я': 'Ja',
    'Ю': 'Ju',
    'К': 'K',
    'Л': 'L',
    'М': 'M',
    'Н': 'N',
    'О': 'O',
    'П': 'P',
    'Р': 'R',
    'С': 'S',
    'Ш': 'Sh',
    'Щ': 'Shch',
    'Т': 'T',
    'У': 'U',
    'В': 'V',
    'Ы': 'Y',
    'З': 'Z',
    'Ж': 'Zh',
    'ъ': '',
    'ь': '',
    'а': 'a',
    'б': 'b',
    'ц': 'c',
    'ч': 'ch',
    'д': 'd',
    'е': 'e',
    'ё': 'e',
    'э': 'e',
    'ф': 'f',
    'г': 'g',
    'х': 'h',
    'и': 'i',
    'й': 'j',
    'я': 'ja',
    'ю': 'ju',
    'к': 'k',
    'л': 'l',
    'м': 'm',
    'н': 'n',
    'о': 'o',
    'п': 'p',
    'р': 'r',
    'с': 's',
    'ш': 'sh',
    'щ': 'shch',
    'т': 't',
    'у': 'u',
    'в': 'v',
    'ы': 'y',
    'з': 'z',
    'ж': 'zh',
    'Ä': 'AE',
    'Ö': 'OE',
    'Ü': 'UE',
    'ß': 'ss',
    'ä': 'ae',
    'ö': 'oe',
    'ü': 'ue',
    'Ç': 'C',
    'Ğ': 'G',
    'İ': 'I',
    'Ş': 'S',
    'ç': 'c',
    'ğ': 'g',
    'ı': 'i',
    'ş': 's',
    'Ā': 'A',
    'Ē': 'E',
    'Ģ': 'G',
    'Ī': 'I',
    'Ķ': 'K',
    'Ļ': 'L',
    'Ņ': 'N',
    'Ū': 'U',
    'ā': 'a',
    'ē': 'e',
    'ģ': 'g',
    'ī': 'i',
    'ķ': 'k',
    'ļ': 'l',
    'ņ': 'n',
    'ū': 'u',
    'Ґ': 'G',
    'І': 'I',
    'Ї': 'Ji',
    'Є': 'Ye',
    'ґ': 'g',
    'і': 'i',
    'ї': 'ji',
    'є': 'ye',
    'Č': 'C',
    'Ď': 'Dj',
    'Ě': 'E',
    'Ň': 'N',
    'Ř': 'R',
    'Š': 'S',
    'Ť': 'T',
    'Ů': 'U',
    'Ž': 'Z',
    'č': 'c',
    'ď': 'dj',
    'ě': 'e',
    'ň': 'n',
    'ř': 'r',
    'š': 's',
    'ť': 't',
    'ů': 'u',
    'ž': 'z',
    'Ą': 'A',
    'Ć': 'C',
    'Ę': 'E',
    'Ł': 'L',
    'Ń': 'N',
    'Ó': 'O',
    'Ś': 'S',
    'Ź': 'Z',
    'Ż': 'Z',
    'ą': 'a',
    'ć': 'c',
    'ę': 'e',
    'ł': 'l',
    'ń': 'n',
    'ó': 'o',
    'ś': 's',
    'ź': 'z',
    'ż': 'z',
    'Α': 'A',
    'Β': 'B',
    'Γ': 'G',
    'Δ': 'D',
    'Ε': 'E',
    'Ζ': 'Z',
    'Η': 'E',
    'Θ': 'Th',
    'Ι': 'I',
    'Κ': 'K',
    'Λ': 'L',
    'Μ': 'M',
    'Ν': 'N',
    'Ξ': 'X',
    'Ο': 'O',
    'Π': 'P',
    'Ρ': 'R',
    'Σ': 'S',
    'Τ': 'T',
    'Υ': 'Y',
    'Φ': 'Ph',
    'Χ': 'Ch',
    'Ψ': 'Ps',
    'Ω': 'O',
    'Ϊ': 'I',
    'Ϋ': 'Y',
    'ά': 'a',
    'έ': 'e',
    'ή': 'e',
    'ί': 'i',
    'ΰ': 'Y',
    'α': 'a',
    'β': 'b',
    'γ': 'g',
    'δ': 'd',
    'ε': 'e',
    'ζ': 'z',
    'η': 'e',
    'θ': 'th',
    'ι': 'i',
    'κ': 'k',
    'λ': 'l',
    'μ': 'm',
    'ν': 'n',
    'ξ': 'x',
    'ο': 'o',
    'π': 'p',
    'ρ': 'r',
    'ς': 's',
    'σ': 's',
    'τ': 't',
    'υ': 'y',
    'φ': 'ph',
    'χ': 'ch',
    'ψ': 'ps',
    'ω': 'o',
    'ϊ': 'i',
    'ϋ': 'y',
    'ό': 'o',
    'ύ': 'y',
    'ώ': 'o',
    'ϐ': 'b',
    'ϑ': 'th',
    'ϒ': 'Y',
    'أ': 'a',
    'ب': 'b',
    'ت': 't',
    'ث': 'th',
    'ج': 'g',
    'ح': 'h',
    'خ': 'kh',
    'د': 'd',
    'ذ': 'th',
    'ر': 'r',
    'ز': 'z',
    'س': 's',
    'ش': 'sh',
    'ص': 's',
    'ض': 'd',
    'ط': 't',
    'ظ': 'th',
    'ع': 'aa',
    'غ': 'gh',
    'ف': 'f',
    'ق': 'k',
    'ك': 'k',
    'ل': 'l',
    'م': 'm',
    'ن': 'n',
    'ه': 'h',
    'و': 'o',
    'ي': 'y'
  };

  Slugify({String delimiter: '-', bool lowercase: true}) {
    // config settings
    _delimiter = delimiter;
    _lowercase = lowercase;
  }

  String slugify(String phrase) {
    // trim leading/trailing whitespace & choose case
    String slug = phrase.trim();
    slug = _lowercase? slug.toLowerCase() : slug;

    // substitute for latin characters
    _replacements.forEach((k, v) {
      slug = slug.replaceAll(k, v);
    });

    slug = slug
      // condense whitespaces
      .replaceAll(new RegExp(r'\s{2,}'), ' ')
      // remove punctuation
      .replaceAll(new RegExp(r'[^\w\s-]'), '')
      // add delimiter
      .replaceAll(' ', _delimiter);

    return slug;
  }
}
