const unicodeEmojiData = require('unicode-emoji-data');
const emojiData = unicodeEmojiData.emojiData;
const emojiExpanded = unicodeEmojiData.expandEmojiData(emojiData);

var json = JSON.stringify(emojiExpanded);
fs.writeFile('C:/Users/Evan/Documents/emojis_dictionary_2017/new_emojis.json', json, 'utf8', function (err) {});