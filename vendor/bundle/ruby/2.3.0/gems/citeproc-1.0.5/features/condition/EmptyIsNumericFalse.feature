Feature: condition
  As a CSL cite processor hacker
  I want the test condition_EmptyIsNumericFalse to pass

  @citation @condition
  Scenario: Empty Is Numeric False
    Given the following style:
    """
    <style 
          xmlns="http://purl.org/net/xbiblio/csl"
          class="note"
          version="1.0">
      <info>
        <id />
        <title />
        <updated>2009-08-10T04:49:00+09:00</updated>
      </info>
      <citation>
        <layout>
          <choose>
            <if is-numeric="edition">
              <text value="empty edition is numeric"/>
            </if>
            <else>
              <text value="empty edition is not numeric"/>
            </else>
          </choose>
        </layout>
      </citation>
    </style>
    """
    And the following input:
    """
    [{"id":"ITEM-1","title":"His Anonymous Life","type":"book"}]
    """
    When I cite all items
    Then the result should be:
    """
    empty edition is not numeric
    """
