<?xml version="1.0" ?>

<TestCase name="TermSearch" version="5">

<meta>
   <create version="7.5.2" buildNumber="7.5.2.235" author="alok.senger" date="06/01/2016" host="STEVWKX5038D" />
   <lastEdited version="9.1.0" buildNumber="9.1.0.399" author="admin" date="07/01/2016" host="HOLBNT87032" />
</meta>

<id>E70B12F727E711E68599B8AC6F206A3A</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9NSZsaXNhdj05LjEuMCAoOS4xLjAuMzk5KSZub2Rlcz04Mzc0Mzk0NDA=</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

<deletedProps>
</deletedProps>

    <Node name="Term Search" log=""
          type="com.itko.lisa.ws.rest.RESTNode" 
          version="3" 
          uid="E70B12F827E711E68599B8AC6F206A3A" 
          think="500-1S" 
          useFilters="true" 
          quiet="false" 
          next="Term Search" > 


      <!-- Filters -->
      <Filter type="com.ca.lisa.apptest.json.FilterJSONGet">
        <valueToFilterKey>lisa.Term Search.rsp</valueToFilterKey>
      <jsonPath>$.name</jsonPath>
      <valueProp>Product_name</valueProp>
      <lengthProp></lengthProp>
      </Filter>


      <!-- Data Sets -->
<readrec>Data</readrec>

      <!-- Assertions -->
<CheckResult assertTrue="false" name="Response Code" type="com.itko.lisa.test.AssertPropsEqual">
<log>Assertion name: Response Code checks for: false is of type: Assert Properties Equal.</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <prop1>lisa.Term Search.http.responseCode</prop1>
        <prop2>ExpectedHTTPCode</prop2>
</CheckResult>

<CheckResult assertTrue="false" name="Ensure Result Equals" type="com.ca.lisa.apptest.json.AssertJSONEquals2">
<log>Assertion name: Ensure Result Equals checks for: false is of type: Ensure Result Equals.</log>
<then>continue</then>
<valueToAssertKey></valueToAssertKey>
        <jsonPath>$.name</jsonPath>
        <expectedValue>{{Expected_Value}}</expectedValue>
        <ignoreArrayOrder>false</ignoreArrayOrder>
</CheckResult>

<url>http://devtwin4132:8017/search/?terms={{terms}}</url>
<content-type></content-type>
<data-type>text</data-type>
<httpMethod>GET</httpMethod>
<onError>abort</onError>
    </Node>


    <Node name="abort" log=""
          type="com.itko.lisa.test.AbortStep" 
          version="1" 
          uid="E70B12FB27E711E68599B8AC6F206A3A" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="" > 

    </Node>


    <Node name="fail" log=""
          type="com.itko.lisa.test.Abend" 
          version="1" 
          uid="E70B12FA27E711E68599B8AC6F206A3A" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="abort" > 

    </Node>


    <Node name="end" log=""
          type="com.itko.lisa.test.NormalEnd" 
          version="1" 
          uid="E70B12F927E711E68599B8AC6F206A3A" 
          think="0h" 
          useFilters="true" 
          quiet="true" 
          next="fail" > 

    </Node>


    <DataSet type="com.itko.lisa.test.ExcelDataFile" name="Data" atend="end" local="false" random="false" maxItemsToFetch="100" >
<sample>rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAEdAAORXhwZWN0ZWRfVmFsdWV0AAVhcHBsZXQABXRlcm1zcQB+AAN0ABBFeHBlY3RlZEhUVFBDb2RldAADMjAwdAALRGF0YV9Sb3dOdW10AAExeA==</sample>
    <location>{{LISA_PROJ_ROOT}}/Data/Search.xls</location>
    <sheetname>TermSearch</sheetname>
    </DataSet>

</TestCase>
