const puppeteer = require('puppeteer');   

async function timeout(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

(async() => {    
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  // await page.setViewport({width:1200, height:1580});    
  await page.goto('http://localhost:3000/gsenden.html',{ waitUntil: 'networkidle2' });    
  await page.evaluate(() => { window.scrollBy(0, window.innerHeight); })
  await page.pdf({
    path: 'dist/gsenden.pdf',
    printBackground: true,
    format: 'A4'
    // width: '1050px',
    // height: '1525px'

  });    
  await browser.close();    
})();