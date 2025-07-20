<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<xsl:variable name="owner_url"><xsl:value-of select="/rss/channel/link"/></xsl:variable>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="referrer" content="unsafe-url" />
        <title><xsl:value-of select="/rss/channel/title"/>Aaron S. Randreth | RSS</title>

        <link rel="stylesheet" href="/css/style.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/jetbrains-mono@1.0.6/css/jetbrains-mono.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css"/>
</head>
<body>

<nav>
  <a id="logo" href="/">
    <i class="bi bi-house-fill"></i></a>
</nav>

<main>
    <h1>
        <!-- <xsl:value-of select="/rss/channel/title"/> -->
        Feed for Aaron's blog. <i class="bi bi-rss-fill"></i>
    </h1>
    <p>
        <xsl:value-of select="/rss/channel/description"/>
    </p>

    <p>This is the RSS <a href="https://www.rss.style/what-is-a-feed.html">news feed</a> for my blog.
    It is meant for <a href="https://www.rss.style/newsreaders.html">news readers</a>, not humans.
    Please copy-and-paste the URL into your news reader ^^
    </p>

    <p>
        <pre>
            <code id="feedurl"><xsl:value-of select="/rss/channel/atom:link/@href"/></code>
            <button class="clipboard" data-clipboard-target="#feedurl">Copy to clipboard</button>
        </pre>
    </p>

    <p>I recommend <a href="https://github.com/spacecowboy/Feeder">Feeder</a>, a KISS reader for android.</p>

<section>
<h2>RSS Entries</h2>
<p><xsl:value-of select="count(/rss/channel/item)"/> items.</p>
<ul id="rss-entries">
    <xsl:for-each select="/rss/channel/item">
        <li>
        <details>
            <summary>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="link"/>
                    </xsl:attribute>
                    <xsl:value-of select="title"/>
                </a>
                    &#xa0;-&#xa0;
                    <xsl:value-of select="pubDate" />
            </summary>
            <xsl:value-of select="description" disable-output-escaping="yes" />
        </details>
        </li>
    </xsl:for-each>
</ul>
</section>
<script src="https://cdn.jsdelivr.net/npm/clipboard@2.0.11/dist/clipboard.min.js"></script>
<script>new ClipboardJS('.clipboard');</script>
</main>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
