import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { TesteComponent } from './teste/teste.component';
import { Teste2Component } from './teste2/teste2.component';

@NgModule({
  declarations: [
    AppComponent,
    TesteComponent,
    Teste2Component
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
