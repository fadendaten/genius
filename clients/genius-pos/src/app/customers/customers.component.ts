import { Component, OnInit } from '@angular/core';
import { Customer } from './customer.model';
import { CustomerService } from './customer.service';
import { Http } from '@angular/http';
import { ActivatedRoute, Router } from "@angular/router";

@Component({
  selector: 'app-customers',
  templateUrl: './customers.component.html',
  styleUrls: ['./customers.component.css'],
  providers: [CustomerService]
})
export class CustomersComponent implements OnInit {
  customer: Customer;
  countries: any;

  errorMessage: any;

  constructor(private http: Http, private customerService: CustomerService, private activeRoute: ActivatedRoute) {
    this.customer = new Customer();
  }

  ngOnInit() {
    let id = this.activeRoute.snapshot.params["id"];
    this.customerService.getCustomer(id).then(
      (data) => {
        Object.assign(this.customer, data || new Customer());
      });

    // this.http.get('http://localhost:5002/countries.json')
    //   .subscribe(response => this.countries = response.json());
  }

  save() {
    this.customerService.create(this.customer)
       .subscribe(
         customer => console.log(customer),
         error =>  this.errorMessage = <any>error);
    if(this.errorMessage) {
      console.error(this.errorMessage);
    }
    console.log('saved');
  }
}
