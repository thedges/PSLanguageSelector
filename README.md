# PSLanguageSelector

THIS SOFTWARE IS COVERED BY [THIS DISCLAIMER](https://raw.githubusercontent.com/thedges/Disclaimer/master/disclaimer.txt).

A component for changing the language of authenticated user in a community. The functionality of this component is pretty simple. Based on the language selector, the component updates the Locale user setting (field LanguageLocaleKey) on the current users record. The component then forces a full page refresh which was needed to get all areas of community page to update.

Some details of this component:
  * To show it on all pages, put it in header or footer section of community
  * It only shows for authenticated users (i.e. it hides itself for Guest users)
  * There are no configuration options for this component yet. To edit the label or language options, you will need to directly edit the component file using Developer Console.

<a href="https://githubsfdeploy.herokuapp.com">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>
