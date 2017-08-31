import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';

import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { AppComponent } from './app.component';
import { AppRoutingModule } from './app.routing.module';
import {
  MdButtonModule,
  MdCheckboxModule,
  MdSelectModule,
  MdProgressBarModule
} from '@angular/material';

import { NavigationComponent } from './navigation/navigation.component';
import { FooterComponent } from './footer/footer.component';

import { DashboardComponent } from './dashboard/dashboard.component';
import { DashboardCustomerComponent } from './dashboard/customer/customer.component';
import { DashboardDealComponent } from './dashboard/deal/deal.component';
import { DashboardProductComponent } from './dashboard/product/product.component';
import { DashboardReturnComponent } from './dashboard/return/return.component';
import { CustomersComponent } from './customers/customers.component';
import { DealComponent } from './deal/deal.component';


@NgModule({
  declarations: [
    AppComponent,
    NavigationComponent,
    FooterComponent,
    DashboardComponent,
    DashboardCustomerComponent,
    DashboardDealComponent,
    DashboardProductComponent,
    DashboardReturnComponent,
    CustomersComponent,
    DealComponent,
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    BrowserAnimationsModule,
    AppRoutingModule,
    MdButtonModule,
    MdCheckboxModule,
    MdSelectModule,
    MdProgressBarModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
