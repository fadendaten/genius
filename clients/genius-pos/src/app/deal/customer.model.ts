export class Customer {

  public id: number;
  public preName: string;
  public name: string;

  private _cardValue: number;
  private _tempCardValue: number;
  private _progress: number;

  private CARD_LIMIT = 1500;

  constructor (
               id: number,
               preName: string,
               name: string,
               cardValue?: number
              ) {

    this.id = id;
    this.preName = preName;
    this.name = name;
    this._cardValue = cardValue || 0;
    this._tempCardValue = 0;

    this._progress = this.calculateProgress();
  }

  public toString(): string {
    return this.preName + " " + this.name;
  }

  private calculateProgress(): number {
     return ((this._cardValue + this._tempCardValue)/ this.CARD_LIMIT) * 100;
  }

  get cardValue(): number {
    return this._cardValue + this._tempCardValue;
  }

  addCardValue(value: number) {
    this._tempCardValue = value;
  }

  get progress(): number {
    return this.calculateProgress();
  }



}
