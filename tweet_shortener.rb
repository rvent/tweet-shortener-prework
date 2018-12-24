# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
}
end

def word_substituter(tweet)
  dic = dictionary
  tweet_split = tweet.split(" ")
  tweet_split.each_with_index do |word, index|
    if dic.keys.include?(word.downcase)
      tweet_split[index] = dic[word.downcase]
    end
  end
  tweet_split.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet|  puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = selective_tweet_shortener(tweet)
  short_tweet[0..139]
end
