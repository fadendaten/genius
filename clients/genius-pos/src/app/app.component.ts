import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent {

  private _title;

  constructor() {
    this._title = 'Genius POS';
  }

  get title() {
    return this._title;
  }

}
