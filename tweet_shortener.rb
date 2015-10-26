

tweet_one = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

def dictionary
  dictionary = {"hello" => 'hi',
    "to" => '2', "two" => '2', "too" => '2',
    "for" => '4', "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'}
end

def word_substituter(tweet)
  short = []
  substitutes = dictionary.keys
  array = tweet.split
  array.each do |word|
    substitutes.each do |sub|
      if word.downcase == sub
        word = dictionary[sub]
      end
    end
    short << word
  end
 short.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    short_tweet = word_substituter(tweet)
    puts short_tweet
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = tweet[0..136] + "..."
  else tweet
  end
end


