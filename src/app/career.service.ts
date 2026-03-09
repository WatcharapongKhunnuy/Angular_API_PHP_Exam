import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface Career {
  id?: number;
  curriculum_id: number;
  title_th: string;
}

@Injectable({
  providedIn: 'root'
})
export class CareerService {
  private apiUrl = 'http://localhost:1880/api/careers';

  constructor(private http: HttpClient) {}

  getCareers(): Observable<Career[]> {
    return this.http.get<Career[]>(this.apiUrl);
  }

  addCareer(career: Career): Observable<Career> {
    return this.http.post<Career>(this.apiUrl, career);
  }

  updateCareer(career: Career): Observable<Career> {
    return this.http.put<Career>(`${this.apiUrl}/${career.id}`, career);
  }

  deleteCareer(id: number): Observable<any> {
    return this.http.delete(`${this.apiUrl}/${id}`);
  }
}
