<?xml version="1.0" ?>

<TestCase name="Endpoints" version="5">

<meta>
   <create version="7.5.2" buildNumber="7.5.2.235" author="alok.senger" date="05/26/2016" host="STEVWKX5038D" />
   <lastEdited version="9.1.0" buildNumber="9.1.0.399" author="admin" date="06/10/2016" host="TCSBWK8119" />
</meta>

<id>EA19D247230811E6BC62B8AC6F206A3A</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj05LjEuMCAoOS4xLjAuMzk5KSZub2Rlcz0tMTYyMzgyNzMzMg==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Send Email Step" log=""
          type="com.itko.lisa.glass.SendEmailStep" 
          version="1" 
          uid="6BC769202EF311E683E0B8AEED9E4E72" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="end" > 

<EmailConnection>
<AssetInfo type="org.apache.commons.mail.HtmlEmail" hashcode="973324029"><Url>config://com.itko.lisa.glass.email.asset-CB02D6252EF311E683E0B8AEED9E4E72</Url>
</AssetInfo>
<Ref>
</Ref>
</EmailConnection>
<Bcc></Bcc>
<Cc></Cc>
<From>danda.radha@tcs.com</From>
<Message>Hello</Message>
<Subject>Test</Subject>
<To>radha.danda@sainsburys.co.uk</To>
<onError>abort</onError>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="EA19D249230811E6BC62B8AC6F206A3A" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="EA19D24B230811E6BC62B8AC6F206A3A" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="EA19D24D230811E6BC62B8AC6F206A3A" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


</TestCase>
