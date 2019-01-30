(:~
 : This module contains some basic examples for RESTXQ annotations.
 : @author BaseX Team with slight mod by wendellpiez@github
 :)
module namespace page = 'http://basex.org/modules/web-page';

(:~
 : Generates a welcome page.
 : @return HTML page
 :)
declare
  %rest:path("")
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
function page:start(
) as element(Q{http://www.w3.org/1999/xhtml}html) {
  <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <title>BaseX HTTP Services</title>
      <link rel="stylesheet" type="text/css" href="static/style.css"/>
    </head>
    <body>
      <div class="right"><a href='/'><img src="static/basex.svg"/></a></div>
      <h1>BaseX HTTP Services</h1>
      <h2>This installation is running <a href="XMLLunchbox">XML Lunchbox</a></h2>
      <h3>Running { xslt:processor() }</h3>
      <div>Welcome to the BaseX HTTP Services. They allow you to:</div>
      <ul>
        <li>create web applications and services with
          <a href="http://docs.basex.org/wiki/RESTXQ">RESTXQ</a>,</li>
        <li>use full-duplex communication with
          <a href="http://docs.basex.org/wiki/WebSocket">WebSockets</a>,</li>
        <li>query and modify databases via <a href="http://docs.basex.org/wiki/REST">REST</a>
          (try <a href='rest'>here</a>), and</li>
        <li>browse and update resources via
          <a href="http://docs.basex.org/wiki/WebDAV">WebDAV</a>.</li>
      </ul>

      <p>Find more information on the
        <a href="http://docs.basex.org/wiki/Web_Application">Web Application</a>
        page in our documentation.</p>

      <p>The following sample applications give you a glimpse of how applications
        can be written with BaseX:</p>

      <h3><a href="dba">DBA: Database Administration</a></h3>

      <p>The Database Administration interface is completely
        written in RESTXQ.<br/>
        The source code helps to understand how complex
        web applications can be built with XQuery.
      </p>

      <h3><a href="chat">WebSocket Chat</a></h3>

      <p>The chat application demonstrates how bidirectional communication
        is realized with BaseX.<br/>
        For a better experience when testing the chat,
        consider the following steps:
      </p>
        
      <ol>
        <li> Create different database users first (e.g. via the DBA).</li>
        <li> Open two different browsers and log in with different users.</li>
      </ol>
    </body>
  </html>
};
