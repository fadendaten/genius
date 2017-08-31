import { Component, OnInit } from '@angular/core';

import { ProductsService } from './products.service';

import { Deal } from './deal.model';
import { Product } from './product.model';
import { Customer } from './customer.model';

@Component({
  selector: 'app-deal',
  templateUrl: './deal.component.html',
  styleUrls: ['./deal.component.css'],
  providers: [ProductsService]
})

export class DealComponent implements OnInit {
  public customers: Array<Customer>;
  public deal: Deal;
  public webshopDeal: Deal;
  product: Product;
  query: string;

  constructor(private productsService: ProductsService) {
    this.deal = new Deal();
    this.webshopDeal = new Deal();
    this.query = '';

    this.customers = [
      new Customer(1, "Marc", "Willy", 120),
      new Customer(2, "Kevin", "Willy", 356),
      new Customer(3, "Richard", "Maier", 894)
    ]
  }

  ngOnInit() {
  }

  search(ean: string) {
    this.productsService.searchEan(ean)
      .subscribe(
        data => {
          this.deal.addProduct(data);
        },
        error => console.error(error)
      );
      this.query = '';
  }

  addToWebshop(event: any, item: Product) {
    this.deal.deleteItem(event, item);
    this.webshopDeal.addProduct(item);
  }

  addToDeal(event: any, item: Product) {
    this.webshopDeal.deleteItem(event, item);
    this.deal.addProduct(item);
  }


}
