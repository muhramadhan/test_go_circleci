import com.kms.katalon.core.main.TestCaseMain
import com.kms.katalon.core.logging.KeywordLogger
import com.kms.katalon.core.testcase.TestCaseBinding
import com.kms.katalon.core.driver.internal.DriverCleanerCollector
import com.kms.katalon.core.model.FailureHandling
import com.kms.katalon.core.configuration.RunConfiguration
import com.kms.katalon.core.webui.contribution.WebUiDriverCleaner
import com.kms.katalon.core.mobile.contribution.MobileDriverCleaner
import com.kms.katalon.core.cucumber.keyword.internal.CucumberDriverCleaner


DriverCleanerCollector.getInstance().addDriverCleaner(new com.kms.katalon.core.webui.contribution.WebUiDriverCleaner())
DriverCleanerCollector.getInstance().addDriverCleaner(new com.kms.katalon.core.mobile.contribution.MobileDriverCleaner())
DriverCleanerCollector.getInstance().addDriverCleaner(new com.kms.katalon.core.cucumber.keyword.internal.CucumberDriverCleaner())


RunConfiguration.setExecutionSettingFile('/var/folders/2j/mrv0030j3dd7vycw6h9lqy3w0000gn/T/Katalon/20190619_141639/execution.properties')

TestCaseMain.beforeStart()

        TestCaseMain.runWSVerificationScript(new TestCaseBinding('',[:]), '    \nimport com.kms.katalon.core.testdata.TestDataFactory as TestDataFactory\nimport com.kms.katalon.core.testobject.ObjectRepository as ObjectRepository\nimport com.kms.katalon.core.testcase.TestCaseFactory as TestCaseFactory\nimport static com.kms.katalon.core.testdata.TestDataFactory.findTestData\nimport static com.kms.katalon.core.testobject.ObjectRepository.findTestObject\nimport static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase\nimport internal.GlobalVariable as GlobalVariable\n\nMap<String, String> evaluatedVariables = [:]\n\n\nevaluatedVariables.put(\"userid\", 1.toString())\n\n\nFileOutputStream fos = null\nObjectOutputStream oos = null\ntry {\n   fos = new FileOutputStream(new File(\"/var/folders/2j/mrv0030j3dd7vycw6h9lqy3w0000gn/T/Katalon/variables/variable-eval-2008047237079720798.tmp\"))\n   oos = new ObjectOutputStream(fos);\n   oos.writeObject(evaluatedVariables)\n} catch (Exception e) {\n   e.printStackTrace()\n} finally {\n   if (fos != null) {\n       fos.close()\n   }\n\n   if (oos != null) {\n       oos.close()\n   }\n}\n \n', FailureHandling.STOP_ON_FAILURE, true)

