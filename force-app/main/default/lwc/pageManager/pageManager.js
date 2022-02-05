/**
 * Created by bjohnson on 1/5/2022.
 */

class Page {
  currentPage;
  nextPage;
  methodsOnExit = [];
  progressStatus;
  buttonProps = {
    forwardText: 'forward',
    backText: 'back',
    forwardEnabled: true,
    backEnabled: true
  }

}

//

class IntroPage extends Page{
  currentPage = 'intro';
  nextPage = 'contactInfo'
  progressStatus = 1;
  buttonProps = {
    forwardEnabled: false,
    backEnabled: false
  }
}


var pageMap = new Map();
pageMap.set('default', IntroPage);



function stateFactory(pageName){
  var page = pageMap.get(pageName);
  return new page()
}

export {stateFactory}