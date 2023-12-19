import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable, mergeMap } from 'rxjs';
import { Product } from './product.class';

@Injectable({
  providedIn: 'root'
})
export class ProductsService {

    private static productslist: Product[] = null;
    private products$: BehaviorSubject<Product[]> = new BehaviorSubject<Product[]>([]);
    private url: string = 'http://localhost:8080/products'; //'assets/products.json'

    constructor(private http: HttpClient) { }

    getProducts(): Observable<Product[]> {
        if( ! ProductsService.productslist )
        {
            this.http.get<any>(this.url).subscribe(data => {
                ProductsService.productslist = data.data;                
                this.products$.next(ProductsService.productslist);
            });
        }
        else
        {
            this.products$.next(ProductsService.productslist);
        }

        return this.products$;
    }

    create(prod: Product): Observable<Product[]> {        
        return this.http.post<any>(this.url, prod).pipe(
            mergeMap(data => {
              ProductsService.productslist.push(data.data);
              this.products$.next(ProductsService.productslist);
              return this.products$;
            })
          );
    }

    update(prod: Product): Observable<Product[]>{
        return this.http.put<any>(this.url, prod).pipe(
            mergeMap(data => {
                ProductsService.productslist.forEach(element => {
                    let product = data.data;
                    if(element.id == product.id)
                    {
                        element.name = product.name;
                        element.category = product.category;
                        element.code = product.code;
                        element.description = product.description;
                        element.image = product.image;
                        element.inventoryStatus = product.inventoryStatus;
                        element.price = product.price;
                        element.quantity = product.quantity;
                        element.rating = product.rating;
                    }
                });
                this.products$.next(ProductsService.productslist);
                return this.products$;
            })
        );
    }


    delete(id: number): Observable<Product[]>{
        return this.http.delete<any>(this.url + "/" + id).pipe(
            mergeMap(() => {
                ProductsService.productslist = ProductsService.productslist.filter(value => { return value.id !== id } );
                this.products$.next(ProductsService.productslist);
                return this.products$;
            })
        );
    }
}