<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
  queryBinding="xslt2">
  <ns prefix="lb" uri="http://www.oxygenxml.com/ns/languageBook"/>

  <pattern abstract="true" id="restrictMaxWords">
    <rule context="$element">
      <let name="words" value="count(tokenize(normalize-space(.), ' '))"/>
      <assert test="$words &lt;= $maxWords" role="warn">
        Too many words! We need to have maximum <value-of select="$maxWords"/> words 
        but you have <value-of select="$words"/> words. </assert>
    </rule>    
  </pattern>


  <!-- Restrict the maximum number of words in a term element -->
  <pattern id="restrictWordsInTerm" is-a="restrictMaxWords">
    <param name="element" value="lb:term"/>
    <param name="maxWords" value="5"/>
  </pattern>
  
  <!-- Restrict the maximum number of words in a what element -->
  <pattern id="restrictWordsInWhat" is-a="restrictMaxWords">
    <param name="element" value="lb:what"/>
    <param name="maxWords" value="100"/>
  </pattern>
  
  <!-- Restrict the maximum number of words in a bio element -->
  <pattern id="restrictWordsInBio" is-a="restrictMaxWords">
    <param name="element" value="lb:bio"/>
    <param name="maxWords" value="150"/>
  </pattern>
  
  
  <!-- Restrict the maximum number of words in a why element -->
  <pattern id="restrictWordsInWhy" is-a="restrictMaxWords">
    <param name="element" value="lb:why"/>
    <param name="maxWords" value="100"/>
  </pattern>
  
  
  <!-- Restrict the maximum number of words in a description element -->
  <pattern id="restrictWordsInDescription" is-a="restrictMaxWords">
    <param name="element" value="lb:description"/>
    <param name="maxWords" value="400"/>
  </pattern>
</schema>
