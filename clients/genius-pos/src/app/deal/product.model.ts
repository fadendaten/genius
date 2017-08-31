import { BlimService } from './blim.service';

export class Product {
  private _id: number;

  public number: string;
  public name: string;
  public ean: string;
  public collection: string;
  public program: string;
  public size: string;
  public colour: string;

  private _price_chf: number;
  private _price_eur: number;

  private _quantity: number;


  constructor (
    id: string,
    number: string,
    name: string,
    ean: string,
    collection: string,
    program: string,
    size: string,
    colour: string,
    price_chf: string,
    price_eur: string
  ) {
    this._id = parseInt(id);
    this.number = number;
    this.name = name;
    this.ean = ean;
    this.collection = collection;
    this.program = program;
    this.size = size;
    this.colour = colour;

    this._price_chf = parseFloat(price_chf);
    this._price_eur = parseFloat(price_eur);

    this._quantity = 1;
  }

  public addQuantity(value: number) {
    this._quantity = this._quantity + value;
  }

  public totalPrice(): number {
    return this._quantity * this._price_chf;
  }

  public imageUrl(): string {
    let service = new BlimService(this);
    return service.imageUrl();
  }

  get id(): number {
    return this._id;
  }

  get price_chf(): number {
    return this._price_chf;
  }

  get quantity(): number {
    return this._quantity;
  }


  // get price_eur(): number {
  //   return 0;
  //   // return this._price_eur.toFixed(2)
  // }

}
