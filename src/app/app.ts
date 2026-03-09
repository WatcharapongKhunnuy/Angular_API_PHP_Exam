import { Component, signal, inject, OnInit } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, CommonModule, FormsModule],
  templateUrl: './app.html',
  styleUrl: './app.css'
})
export class AppComponent implements OnInit {
  private http = inject(HttpClient);
  private apiUrl = 'http://localhost:1880/api';
  
  activeTab = signal('overview'); 
  isAdmin = signal(false);

  // Data Signals
  curriculum = signal<any>({});
  careers = signal<any[]>([]);
  staff = signal<any[]>([]);
  studyPlan = signal<any[]>([]);
  contact = signal<any>({});
  
  // Edit State
  editingItem = signal<any>(null); // Stores the item currently being edited

  ngOnInit() {
    this.refreshData();
  }

  refreshData() {
    this.http.get(`${this.apiUrl}/curriculums/1`).subscribe((d: any) => this.curriculum.set(d[0]));
    this.http.get(`${this.apiUrl}/careers/0`).subscribe((d: any) => this.careers.set(d));
    this.http.get(`${this.apiUrl}/staff/0`).subscribe((d: any) => this.staff.set(d));
    this.http.get(`${this.apiUrl}/study_plans/0`).subscribe((d: any) => this.studyPlan.set(d));
    this.http.get(`${this.apiUrl}/contact_info/1`).subscribe((d: any) => this.contact.set(d[0]));
  }

  // CRUD Operations
  saveEntity(table: string, id: number, data: any) {
    this.http.put(`${this.apiUrl}/${table}/${id}`, data).subscribe(() => {
      alert('บันทึกข้อมูลสำเร็จ');
      this.refreshData();
      this.editingItem.set(null);
    });
  }

  addEntity(table: string, data: any) {
    this.http.post(`${this.apiUrl}/${table}/0`, data).subscribe(() => {
      alert('เพิ่มข้อมูลสำเร็จ');
      this.refreshData();
      this.editingItem.set(null);
    });
  }

  deleteEntity(table: string, id: number) {
    if (confirm('ยืนยันการลบข้อมูล?')) {
      this.http.delete(`${this.apiUrl}/${table}/${id}`).subscribe(() => {
        this.refreshData();
      });
    }
  }

  // UI Helpers
  setTab(tab: string) { this.activeTab.set(tab); this.editingItem.set(null); }
  toggleAdmin() { this.isAdmin.set(!this.isAdmin()); }
  startEdit(item: any) { this.editingItem.set({ ...item }); }
  startAdd(type: string) { 
    if (type === 'staff') this.editingItem.set({ name: '', position: '', specialization: '', isNew: true });
    if (type === 'study_plan') this.editingItem.set({ course_code: '', course_name: '', credits: 3, year: 1, semester: 1, isNew: true });
    if (type === 'careers') this.editingItem.set({ title_th: '', isNew: true });
  }
}
