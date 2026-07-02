package com.roblox.client.contacts;

import android.content.SharedPreferences;
import android.database.Cursor;
import com.roblox.client.contacts.i;
import com.roblox.client.util.m;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e implements i.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f6834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private m f6835b;

    public e(m mVar, b bVar) {
        this.f6834a = bVar;
        this.f6835b = mVar;
    }

    @Override // com.roblox.client.contacts.i.a
    public void a(Cursor cursor, final f fVar) {
        this.f6834a.a(a());
        this.f6834a.a(cursor, new d() { // from class: com.roblox.client.contacts.e.1
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
    public void a(com.roblox.client.contacts.model.d dVar) {
        this.f6834a.a(dVar);
    }

    @Override // com.roblox.client.contacts.i.a
    public void b(com.roblox.client.contacts.model.d dVar) {
        this.f6834a.b(dVar);
    }

    private String a() {
        return this.f6835b.a("prefs").getString("ContactsPayloadHash", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        SharedPreferences.Editor editorEdit = this.f6835b.a("prefs").edit();
        editorEdit.putString("ContactsPayloadHash", str);
        editorEdit.apply();
    }
}
