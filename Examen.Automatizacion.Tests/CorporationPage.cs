using OpenQA.Selenium;
using OpenQA.Selenium.Support.PageObjects;
using System.Collections.Generic;

namespace Examen.Automation
{
    public class CorporationPage
    {
        const string url = "http://localhost/ExamenApi";

        private readonly IWebDriver _driver;

        #region Customer Page Elements
        [FindsBy(How = How.CssSelector, Using = "a[href*='/corporacion']")]
        private IWebElement customerLink = null;

        [FindsBy(How = How.CssSelector, Using = "table.table>tbody>tr")]
        private IList<IWebElement> customersList = null;
        #endregion

        public CorporationPage()
        {
            _driver = Driver.Instance;
            PageFactory.InitElements(_driver, this);
        }

        public void GoToUrl()
        {
            Driver.Instance.Navigate().GoToUrl(url);
        }

        public void GoToIndex()
        {
            customerLink.Click();
        }

        public int GetListCount()
        {
            return customersList.Count;
        }
    }
}
