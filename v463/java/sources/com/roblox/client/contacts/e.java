package com.roblox.client.contacts;

import android.content.SharedPreferences;
import android.database.Cursor;
import com.roblox.client.ae.s;
import com.roblox.client.contacts.i;
import com.roblox.client.http.l;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e implements i.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f5942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private s f5943b;

    public e(s sVar, b bVar) {
        this.f5942a = bVar;
        this.f5943b = sVar;
    }

    @Override // com.roblox.client.contacts.i.a
    public void a(Cursor cursor, final f fVar) {
        this.f5942a.a(a());
        this.f5942a.a(cursor, new d() { // from class: com.roblox.client.contacts.e.1
            @Override // com.roblox.client.contacts.d
            public void a(int i) {
                fVar.a(i);
            }

            @Override // com.roblox.client.contacts.d
            public void a() {
                fVar.a();
            }

            @Override // com.roblox.client.contacts.d
            public void b() {
                fVar.b();
            }

            @Override // com.roblox.client.contacts.d
            public void a(String str) {
                e.this.a(str);
            }

            @Override // com.roblox.client.contacts.d
            public void a(ArrayList<com.roblox.client.contacts.model.d> arrayList) {
                fVar.a(arrayList);
            }

            @Override // com.roblox.client.contacts.d
            public void a(List<com.roblox.client.contacts.model.d> list) {
                fVar.a(list);
            }

            @Override // com.roblox.client.contacts.d
            public void b(int i) {
                fVar.b(i);
            }
        });
    }

    @Override // com.roblox.client.contacts.i.a
    public void a(com.roblox.client.contacts.model.d dVar, l lVar) {
        this.f5942a.a(dVar, lVar);
    }

    @Override // com.roblox.client.contacts.i.a
    public void b(com.roblox.client.contacts.model.d dVar, l lVar) {
        this.f5942a.c(dVar, lVar);
    }

    @Override // com.roblox.client.contacts.i.a
    public void c(com.roblox.client.contacts.model.d dVar, l lVar) {
        this.f5942a.b(dVar, lVar);
    }

    @Override // com.roblox.client.contacts.i.a
    public void d(com.roblox.client.contacts.model.d dVar, l lVar) {
        this.f5942a.d(dVar, lVar);
    }

    private String a() {
        return this.f5943b.a("prefs").getString("ContactsPayloadHash", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        SharedPreferences.Editor editorEdit = this.f5943b.a("prefs").edit();
        editorEdit.putString("ContactsPayloadHash", str);
        editorEdit.apply();
    }
}
