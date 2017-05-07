import { GeniusPosPage } from './app.po';

describe('genius-pos App', () => {
  let page: GeniusPosPage;

  beforeEach(() => {
    page = new GeniusPosPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
