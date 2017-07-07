Feature: label
  As a CSL cite processor hacker
  I want the test label_CollapsedPageNumberPluralDetection to pass

  @citation @label @citations
  Scenario: Collapsed Page Number Plural Detection
    Given the following style:
    """
    <style 
          xmlns="http://purl.org/net/xbiblio/csl"
          class="note"
          version="1.0"
          page-range-format="expanded">
      <info>
        <id />
        <title />
        <updated>2009-08-10T04:49:00+09:00</updated>
      </info>
      <citation>
        <layout>
         <group delimiter=", ">
           <text variable="title"/>
           <group delimiter=" ">
             <label variable="locator"/>
             <number variable="locator"/>
           </group>
         </group>
        </layout>
      </citation>
    </style>
    """
    And the following input:
    """
    [{"id":"ITEM-1","title":"His Anonymous Life","type":"book"}]
    """
    And I have a citations input
    When I cite all items
    Then the result should be:
    """
    ..[0] His Anonymous Life, page 327-30
    >>[1] His Anonymous Life, pages 327–330
    """
