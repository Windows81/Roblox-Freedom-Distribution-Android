package com.roblox.client.contacts;

import android.database.Cursor;
import com.roblox.client.contacts.i;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.l.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class g implements i.b, a.InterfaceC0114a, com.roblox.client.l.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i.c f6838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i.a f6839b;

    public g(i.c cVar, i.a aVar) {
        this.f6838a = cVar;
        this.f6839b = aVar;
        this.f6838a.a(this);
        this.f6838a.a((com.roblox.client.l.e) this);
        this.f6838a.a((a.InterfaceC0114a) this);
    }

    @Override // com.roblox.client.contacts.i.b
    public void a(Cursor cursor) {
        this.f6839b.a(cursor, new f() { // from class: com.roblox.client.contacts.g.1
            @Override // com.roblox.client.contacts.f
            public void a(int i) {
                g.this.a(i);
                g.this.f6838a.b();
            }

            @Override // com.roblox.client.contacts.f
            public void a() {
                g.this.f6838a.c();
                g.this.b(true);
            }

            @Override // com.roblox.client.contacts.f
            public void b() {
                g.this.a(true);
            }

            @Override // com.roblox.client.contacts.f
            public void a(ArrayList<com.roblox.client.contacts.model.d> arrayList) {
                if (arrayList.size() == 0) {
                    g.this.f6838a.d();
                } else {
                    g.this.f6838a.a(arrayList);
                }
            }

            @Override // com.roblox.client.contacts.f
            public void a(List<com.roblox.client.contacts.model.d> list) {
                g.this.f6838a.a(list);
            }

            @Override // com.roblox.client.contacts.f
            public void b(int i) {
                switch (i) {
                    case 1:
                        g.this.a(false);
                        return;
                    case 2:
                        g.this.b(false);
                        break;
                }
                g.this.f6838a.a(0);
            }
        });
    }

    @Override // com.roblox.client.contacts.i.b
    public void a(com.roblox.client.contacts.model.d dVar) {
        if (dVar.j() == 3) {
            this.f6839b.b(dVar);
            b(dVar.d());
        } else if (dVar.j() == 1) {
            this.f6839b.a(dVar);
            a(dVar.d());
        }
    }

    @Override // com.roblox.client.contacts.i.b
    public void b(com.roblox.client.contacts.model.d dVar) {
        c(dVar.a());
    }

    @Override // com.roblox.client.l.e
    public void a(com.roblox.client.l.d dVar) {
    }

    @Override // com.roblox.client.l.a.InterfaceC0114a
    public void a(com.roblox.client.l.h hVar, com.roblox.client.l.c cVar) {
    }

    private void a(long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("etype", "Request"));
        arrayList.add(new NameValuePair("receiverId", String.valueOf(j)));
        com.roblox.client.i.a("addFriendClicked", arrayList);
    }

    private void b(long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("etype", "Accept"));
        arrayList.add(new NameValuePair("receiverId", String.valueOf(j)));
        com.roblox.client.i.a("addFriendClicked", arrayList);
    }

    private void c(long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("contactId", String.valueOf(j)));
        com.roblox.client.i.a("inviteContactClicked", arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("contacts", String.valueOf(i)));
        if (i > com.roblox.client.b.bo()) {
            i = com.roblox.client.b.bo();
        }
        arrayList.add(new NameValuePair("sent", String.valueOf(i)));
        com.roblox.client.i.a("contactFriendFinderContactsSent", arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("status", z ? "Success" : "Failure"));
        com.roblox.client.i.a("contactFriendFinderContactsUpdated", arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("status", z ? "Success" : "Failure"));
        com.roblox.client.i.a("contactFriendFinderContactsMatched", arrayList);
    }
}
