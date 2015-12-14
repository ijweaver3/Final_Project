import com.temboo.core.*;
import com.temboo.Library.Twitter.Search.Tweets.*;

// Create a session using your Temboo account application details
TembooSession session = new TembooSession("ijweaver", "myFirstApp", "2a946e977f9a4b79b3cd6fcae6001d2d");

void setup() {
  // Run the Tweets Choreo function
  runTweetsChoreo();
}

void runTweetsChoreo() {
  // Create the Choreo object using your Temboo session
  Tweets tweetsChoreo = new Tweets(session);

  // Set inputs
  tweetsChoreo.setQuery("#prayforparis");
  tweetsChoreo.setAccessToken("4423050569-SxkT3avZm6W4ip9H9Q2y1n9ftNDvNrjXE7wK0DS");
  tweetsChoreo.setConsumerKey("wlW4TYdtCx61gbJjSdNSnyR7T");
  tweetsChoreo.setConsumerSecret("0M0KwnhwjeIBrfiXJmtdqgQaWDLxnfbpPor6MtR42kUBGipMD9");
  tweetsChoreo.setAccessTokenSecret("5h45sQf6y53HjcyjQfKWVKoF3d2nIT8hZZYrOQG0h6YCX");
  tweetsChoreo.setCount("200");
  tweetsChoreo.setUntil("2015-11-20");

  // Run the Choreo and store the results
  TweetsResultSet tweetsResults = tweetsChoreo.run();
  
  // Print results
  println(tweetsResults.getResponse());
  println(tweetsResults.getLimit());
  println(tweetsResults.getRemaining());
  println(tweetsResults.getReset());

}