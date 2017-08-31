import { NgModule }              from '@angular/core';
import { RouterModule, Routes }  from '@angular/router';

import { DashboardComponent } from './dashboard/dashboard.component';
import { CustomersComponent } from './customers/customers.component';
import { DealComponent } from './deal/deal.component';

const appRoutes: Routes = [
  { path: '',                       component: DashboardComponent },
  { path: 'customers/new',          component: CustomersComponent },
  { path: 'customers/:id',          component: CustomersComponent },
  { path: 'deals/new',              component: DealComponent },
];

@NgModule({
  imports: [
    RouterModule.forRoot(appRoutes)
  ],
  exports: [
    RouterModule
  ]
})

export class AppRoutingModule {}
