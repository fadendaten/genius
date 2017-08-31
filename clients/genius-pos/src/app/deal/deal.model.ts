import { Product } from './product.model';
import { Customer } from './customer.model';

export class Deal {
  public items: Array<Product>;
  public currency: string;

  private _customer: Customer;

  constructor () {
    this.items = [];
    this.currency = "CHF";
  }

  public addProduct(data) {
    if(Object.keys(data).length !== 0) {
      let product;
      if(data instanceof Product) {
        product = data;
      } else {
        product = this.convertToProduct(data);
      }
      this.addItem(product);
    }
  }

  public totalPrice(): number {
    let total = 0;
    for(let item of this.items) {
      total = total + item.totalPrice();
    }
    return total;
  }

  public deleteItem(event: any, item: Product) {
    let index = this.find(item);
    if(index >= 0) {
      this.items.splice(index, 1);
      this.updateCardValue();
    }
  }

  private convertToProduct(data: any): Product {
    let product = new Product(
      data.id,
      data.number,
      data.name,
      data.ean,
      data.collection,
      data.program,
      data.size,
      data.colour,
      data.price_chf,
      data.price_eur);
    return product;
  }

  private addItem(product: Product) {
    let index = this.find(product);
    if(index >= 0) {
      this.items[index].addQuantity(1);
    } else {
      this.items.push(product);
    }
    this.updateCardValue();
  }

  private find(product: Product): number {
    for(let _i = 0; _i < this.items.length; _i++) {
      let item = this.items[_i];
      if(item.id == product.id) {
        return _i;
      }
    }
    return -1;
  }

  private updateCardValue() {
    if(this._customer) {
      let totalPrice = this.totalPrice();
      this._customer.addCardValue(totalPrice);
    }
  }

  public isEmpty(): boolean {
    return this.items.length == 0;
  }

  public set customer(customer: Customer) {
    this._customer = customer;
  }

  public get customer() :Customer {
    return this._customer
  }

}
