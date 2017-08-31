import { Injectable } from '@angular/core';
import { Product } from './product.model';

@Injectable()
export class BlimService {

  private product: Product;

  private BASE_URL = "https://d1csr3q4rjsmej.cloudfront.net";

  constructor(product: Product) {
    this.product = product;
  }

  public imageUrl(): string {
    let url = this.BASE_URL;
    url += '/';
    url += this.collectionPath();
    url += '/';
    url += this.stylePath();
    url += '_';
    url += this.imageType();
    url += '_';
    url += this.product.colour;
    url += '.';
    url += 'jpg';
    return url;
  }

  private collectionPath(): string {
    return this.product.collection.replace(/\//, '_') + '_nile';
  }

  private stylePath(): string {
    return 'nile_' + this.product.number;
  }

  private imageType(): string {
    return "02";
  }
}
