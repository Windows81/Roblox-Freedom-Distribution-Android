package com.roblox.client.contacts;

import android.database.Cursor;
import com.roblox.client.ae.k;
import com.roblox.client.contacts.i;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.http.j;
import com.roblox.client.http.l;
import com.roblox.client.p;
import com.roblox.client.u.a;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g implements i.b, a.InterfaceC0181a, com.roblox.client.u.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i.c f5946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i.a f5947b;

    @Override // com.roblox.client.u.e
    public void a(com.roblox.client.u.d dVar) {
    }

    @Override // com.roblox.client.u.a.InterfaceC0181a
    public void a(com.roblox.client.u.h hVar, com.roblox.client.u.c cVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.roblox.client.s.f a() {
        return com.roblox.client.s.f.b();
    }

    public g(i.c cVar, i.a aVar) {
        this.f5946a = cVar;
        this.f5947b = aVar;
        cVar.a(this);
        this.f5946a.a((com.roblox.client.u.e) this);
        this.f5946a.a((a.InterfaceC0181a) this);
    }

    @Override // com.roblox.client.contacts.i.b
    public void a(Cursor cursor) {
        this.f5947b.a(cursor, new f() { // from class: com.roblox.client.contacts.g.1
            @Override // com.roblox.client.contacts.f
            public void a(int i) {
                g.this.a(i);
                g.this.f5946a.ar();
            }

            @Override // com.roblox.client.contacts.f
            public void a() {
                g.this.f5946a.as();
                g.this.b(true);
            }

            @Override // com.roblox.client.contacts.f
            public void b() {
                g.this.a(true);
            }

            @Override // com.roblox.client.contacts.f
            public void a(ArrayList<com.roblox.client.contacts.model.d> arrayList) {
                if (arrayList.size() == 0) {
                    g.this.f5946a.at();
                } else {
                    g.this.f5946a.a(arrayList);
                }
            }

            @Override // com.roblox.client.contacts.f
            public void a(List<com.roblox.client.contacts.model.d> list) {
                g.this.f5946a.a(list);
            }

            @Override // com.roblox.client.contacts.f
            public void b(int i) {
                if (i != 1) {
                    if (i == 2) {
                        g.this.b(false);
                    }
                    g.this.f5946a.e(0);
                    return;
                }
                g.this.a(false);
            }
        });
    }

    @Override // com.roblox.client.contacts.i.b
    public void a(final com.roblox.client.contacts.model.d dVar) {
        if (dVar.j() == 3) {
            if (com.roblox.client.b.cs()) {
                this.f5947b.b(dVar, new com.roblox.client.http.i() { // from class: com.roblox.client.contacts.g.2
                    @Override // com.roblox.client.http.i, com.roblox.client.http.l
                    public void a(j jVar) {
                        if (jVar.b() == 200) {
                            if (com.roblox.client.b.cy()) {
                                p.g(String.valueOf(dVar.d()), String.valueOf(com.roblox.client.s.h.a().b()), "contactFriendFinder");
                            }
                            g.this.a().a("Android-SetAliasCalled");
                            g.this.f5947b.d(dVar, new com.roblox.client.http.i() { // from class: com.roblox.client.contacts.g.2.1
                                @Override // com.roblox.client.http.i, com.roblox.client.http.l
                                public void a(j jVar2) {
                                    if (jVar2.b() == 200) {
                                        g.this.a().a("Android-SetAliasSuccess");
                                        return;
                                    }
                                    k.e("rbx.contacts", "Error sending alias request, code: " + jVar2.b());
                                    g.this.a().a("Android-SetAliasError");
                                }
                            });
                            return;
                        }
                        k.e("rbx.contacts", "Error accepting friend request, code: " + jVar.b());
                    }
                });
            } else {
                this.f5947b.b(dVar, null);
            }
            b(dVar.d());
            return;
        }
        if (dVar.j() == 1) {
            if (com.roblox.client.b.cr()) {
                this.f5947b.a(dVar, new com.roblox.client.http.i() { // from class: com.roblox.client.contacts.g.3
                    @Override // com.roblox.client.http.i, com.roblox.client.http.l
                    public void a(j jVar) {
                        if (jVar.b() == 200) {
                            if (com.roblox.client.b.cy()) {
                                p.g(String.valueOf(com.roblox.client.s.h.a().b()), String.valueOf(dVar.d()), "contactFriendFinder");
                            }
                            g.this.a().a("Android-SetPendingAliasCalled");
                            g.this.f5947b.c(dVar, new com.roblox.client.http.i() { // from class: com.roblox.client.contacts.g.3.1
                                @Override // com.roblox.client.http.i, com.roblox.client.http.l
                                public void a(j jVar2) {
                                    if (jVar2.b() == 200) {
                                        g.this.a().a("Android-SetPendingAliasSuccess");
                                        return;
                                    }
                                    k.e("rbx.contacts", "Error sending pending alias request, code: " + jVar2.b());
                                    g.this.a().a("Android-SetPendingAliasError");
                                }
                            });
                            return;
                        }
                        k.e("rbx.contacts", "Error sending friend request, code: " + jVar.b());
                    }
                });
            } else {
                this.f5947b.a(dVar, (l) null);
            }
            a(dVar.d());
        }
    }

    @Override // com.roblox.client.contacts.i.b
    public void b(com.roblox.client.contacts.model.d dVar) {
        c(dVar.a());
    }

    private void a(long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("etype", "Request"));
        arrayList.add(new NameValuePair("receiverId", String.valueOf(j)));
        p.a("addFriendClicked", arrayList);
    }

    private void b(long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("etype", "Accept"));
        arrayList.add(new NameValuePair("receiverId", String.valueOf(j)));
        p.a("addFriendClicked", arrayList);
    }

    private void c(long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("contactId", String.valueOf(j)));
        p.a("inviteContactClicked", arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("contacts", String.valueOf(i)));
        if (i > com.roblox.client.b.aw()) {
            i = com.roblox.client.b.aw();
        }
        arrayList.add(new NameValuePair("sent", String.valueOf(i)));
        p.a("contactFriendFinderContactsSent", arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("status", z ? "Success" : "Failure"));
        p.a("contactFriendFinderContactsUpdated", arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("status", z ? "Success" : "Failure"));
        p.a("contactFriendFinderContactsMatched", arrayList);
    }
}
