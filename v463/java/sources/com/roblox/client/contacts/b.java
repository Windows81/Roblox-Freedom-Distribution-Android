package com.roblox.client.contacts;

import android.database.Cursor;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.roblox.client.ae.k;
import com.roblox.client.ae.t;
import com.roblox.client.ae.v;
import com.roblox.client.contacts.model.ContactRequestObject;
import com.roblox.client.http.j;
import com.roblox.client.http.l;
import com.roblox.client.http.post.ContactsSyncRequestBody;
import com.roblox.client.http.post.FriendRequestActionRequestBody;
import com.roblox.client.http.post.FriendRequestSendRequestBody;
import com.roblox.client.http.post.SetPendingTagRequestBody;
import com.roblox.client.http.post.SetTagRequestBody;
import com.roblox.client.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f5898a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TreeMap<Long, com.roblox.client.contacts.model.c> f5899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.client.http.f f5900c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private v.a f5901d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5902e;
    private ArrayList<com.roblox.client.contacts.model.d> f;
    private String g;
    private long h;
    private long i;
    private long j;

    b(com.roblox.client.http.f fVar, v.a aVar) {
        this.f5900c = fVar;
        this.f5901d = aVar;
    }

    void a(String str) {
        this.g = str;
    }

    void a(com.roblox.client.contacts.model.d dVar, l lVar) {
        this.f5900c.a(com.roblox.platform.i.a().d().c(dVar.d()).d().a().toString(), new FriendRequestSendRequestBody(dVar.d()), null, lVar).c();
    }

    void b(com.roblox.client.contacts.model.d dVar, l lVar) {
        this.f5900c.a(u.J(), new SetPendingTagRequestBody(dVar.d(), dVar.b()), null, lVar).c();
    }

    void c(com.roblox.client.contacts.model.d dVar, l lVar) {
        this.f5900c.a(com.roblox.platform.i.a().d().a(dVar.d()).d().a().toString(), new FriendRequestActionRequestBody(dVar.d()), null, lVar).c();
    }

    void d(com.roblox.client.contacts.model.d dVar, l lVar) {
        this.f5900c.a(u.K(), new SetTagRequestBody(dVar.d(), dVar.b()), null, lVar).c();
    }

    void a(final Cursor cursor, final d dVar) {
        this.h = 0L;
        this.i = 0L;
        this.j = 0L;
        this.h = this.f5901d.a();
        final HandlerThread handlerThreadA = com.roblox.client.ae.u.a("Unique_Contacts_Thread");
        handlerThreadA.setPriority(1);
        Runnable runnable = new Runnable() { // from class: com.roblox.client.contacts.b.1
            @Override // java.lang.Runnable
            public void run() {
                b bVar = b.this;
                bVar.f5899b = bVar.a(cursor);
                final int size = b.this.f5899b.size();
                final ArrayList arrayListA = b.this.a();
                b.this.f5898a.post(new Runnable() { // from class: com.roblox.client.contacts.b.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        k.b("rbx.contacts", "Unique contacts fetched. Total=" + b.this.f5899b.size());
                        handlerThreadA.quit();
                        dVar.a(size);
                        com.roblox.client.analytics.d.a("Contacts", "LocalContactsProcessed", b.this.f5901d.a() - b.this.h);
                        b.this.a((ArrayList<ContactRequestObject>) arrayListA, dVar);
                    }
                });
            }
        };
        handlerThreadA.start();
        com.roblox.client.ae.u.a(handlerThreadA.getLooper()).post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TreeMap<Long, com.roblox.client.contacts.model.c> a(Cursor cursor) {
        k.b("rbx.contacts", "Generating unique contacts.");
        TreeMap<Long, com.roblox.client.contacts.model.c> treeMap = new TreeMap<>();
        com.roblox.client.contacts.model.c cVarB = null;
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            if (!treeMap.containsKey(Long.valueOf(j))) {
                cVarB = b(cursor);
                treeMap.put(Long.valueOf(j), cVarB);
            } else {
                a(cursor, cVarB);
            }
        }
        return treeMap;
    }

    private boolean b(String str) {
        return !this.g.equals(str);
    }

    private com.roblox.client.contacts.model.c b(Cursor cursor) {
        long j = cursor.getLong(0);
        String string = cursor.getString(2);
        String string2 = cursor.getString(3);
        com.roblox.client.contacts.model.c cVar = new com.roblox.client.contacts.model.c(j, string);
        cVar.a(string2);
        a(cursor, cVar);
        return cVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(android.database.Cursor r6, com.roblox.client.contacts.model.c r7) {
        /*
            r5 = this;
            r0 = 1
            java.lang.String r1 = r6.getString(r0)
            int r2 = r1.hashCode()
            r3 = 3
            r4 = 2
            switch(r2) {
                case -1569536764: goto L2d;
                case -1079224304: goto L23;
                case -601229436: goto L19;
                case 684173810: goto Lf;
                default: goto Le;
            }
        Le:
            goto L37
        Lf:
            java.lang.String r2 = "vnd.android.cursor.item/phone_v2"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L37
            r1 = 1
            goto L38
        L19:
            java.lang.String r2 = "vnd.android.cursor.item/postal-address_v2"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L37
            r1 = 3
            goto L38
        L23:
            java.lang.String r2 = "vnd.android.cursor.item/name"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L37
            r1 = 2
            goto L38
        L2d:
            java.lang.String r2 = "vnd.android.cursor.item/email_v2"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L37
            r1 = 0
            goto L38
        L37:
            r1 = -1
        L38:
            if (r1 == 0) goto L4d
            if (r1 == r0) goto L49
            if (r1 == r4) goto L45
            if (r1 == r3) goto L41
            goto L50
        L41:
            r5.d(r7, r6)
            goto L50
        L45:
            r5.c(r7, r6)
            goto L50
        L49:
            r5.b(r7, r6)
            goto L50
        L4d:
            r5.a(r7, r6)
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.contacts.b.a(android.database.Cursor, com.roblox.client.contacts.model.c):void");
    }

    private void a(com.roblox.client.contacts.model.c cVar, Cursor cursor) {
        String string = cursor.getString(cursor.getColumnIndex("data1"));
        cursor.getInt(cursor.getColumnIndex("data2"));
        cVar.a(string, "home");
    }

    private void b(com.roblox.client.contacts.model.c cVar, Cursor cursor) {
        cVar.b(cursor.getString(cursor.getColumnIndex("data1")), a.a(cursor.getInt(cursor.getColumnIndex("data2"))));
    }

    private void c(com.roblox.client.contacts.model.c cVar, Cursor cursor) {
        String string = cursor.getString(cursor.getColumnIndex("data2"));
        String string2 = cursor.getString(cursor.getColumnIndex("data3"));
        String string3 = cursor.getString(cursor.getColumnIndex("data5"));
        cVar.c(string);
        cVar.e(string2);
        cVar.d(string3);
    }

    private void d(com.roblox.client.contacts.model.c cVar, Cursor cursor) {
        cVar.f(cursor.getString(cursor.getColumnIndex("data10")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ArrayList<ContactRequestObject> arrayList, final d dVar) {
        k.b("rbx.contacts", "Getting contacts from server. Total=" + this.f5899b.size());
        if (arrayList.size() == 0) {
            dVar.a(new ArrayList<>());
            return;
        }
        com.roblox.client.http.i iVar = new com.roblox.client.http.i() { // from class: com.roblox.client.contacts.b.2
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                int iB = jVar.b();
                k.b("rbx.contacts", "Match responseCode:" + iB + ".");
                com.roblox.client.analytics.d.a("Contacts", "ServerMatchedContacts", b.this.f5901d.a() - b.this.i);
                if (iB == 200) {
                    com.roblox.client.analytics.d.a("Contacts", "Success", Integer.toString(iB));
                    b bVar = b.this;
                    bVar.j = bVar.f5901d.a();
                    b.this.a(jVar.a(), dVar);
                    dVar.a();
                    return;
                }
                com.roblox.client.analytics.d.a("Contacts", "FailureContactsSync", Integer.toString(iB));
                dVar.b(2);
            }
        };
        String strA = com.roblox.client.locale.e.a();
        k.b("rbx.contacts", "countryCode=" + strA + ".");
        String strA2 = new com.google.gson.f().a(new ContactsSyncRequestBody(arrayList, strA));
        com.roblox.client.http.d dVarA = this.f5900c.a(u.H(), strA2, null, iVar, u.s());
        this.i = this.f5901d.a();
        dVarA.c();
        if (com.roblox.client.b.aJ()) {
            String strB = t.b(strA2);
            if (b(strB)) {
                k.b("rbx.contacts", "Contacts changed. Updating... + " + strB + ".");
                dVar.a(strB);
                this.f5900c.a(u.I(), strA2, null, new com.roblox.client.http.i() { // from class: com.roblox.client.contacts.b.3
                    @Override // com.roblox.client.http.i, com.roblox.client.http.l
                    public void a(j jVar) {
                        super.a(jVar);
                        int iB = jVar.b();
                        k.b("rbx.contacts", "Update responseCode:" + iB + ".");
                        if (iB == 200) {
                            dVar.b();
                        } else {
                            dVar.b(1);
                        }
                    }
                }, u.s()).c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str, final d dVar) {
        final HandlerThread handlerThreadA = com.roblox.client.ae.u.a("Parse_Merge_Contacts");
        handlerThreadA.setPriority(1);
        handlerThreadA.start();
        com.roblox.client.ae.u.a(handlerThreadA.getLooper()).post(new Runnable() { // from class: com.roblox.client.contacts.b.4
            @Override // java.lang.Runnable
            public void run() {
                JSONArray jSONArrayC = b.this.c(str);
                if (jSONArrayC == null) {
                    b.this.f5898a.post(new Runnable() { // from class: com.roblox.client.contacts.b.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            handlerThreadA.quit();
                            dVar.b(0);
                        }
                    });
                } else {
                    b.this.a(jSONArrayC, dVar, handlerThreadA);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONArray c(String str) {
        k.b("rbx.contacts", "Parsing json.");
        try {
            return new JSONObject(str).getJSONArray("contacts");
        } catch (JSONException e2) {
            k.e("rbx.contacts", "getRobloxContactsFromServer() error parsing response json");
            com.roblox.client.analytics.d.a("JSONException thrown while parsing contacts from server. Exception message: " + e2.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<ContactRequestObject> a() {
        ArrayList<ContactRequestObject> arrayList = new ArrayList<>();
        Iterator<Long> it = this.f5899b.keySet().iterator();
        while (it.hasNext()) {
            arrayList.add(this.f5899b.get(Long.valueOf(it.next().longValue())).d());
            if (arrayList.size() == com.roblox.client.b.aw()) {
                break;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final JSONArray jSONArray, final d dVar, final HandlerThread handlerThread) {
        new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: com.roblox.client.contacts.b.5
            @Override // java.lang.Runnable
            public void run() {
                com.roblox.client.contacts.model.c cVar;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                k.b("rbx.contacts", "Server contacts:" + jSONArray.length());
                int i = 0;
                while (true) {
                    JSONObject jSONObject = null;
                    if (i >= jSONArray.length()) {
                        break;
                    }
                    try {
                        jSONObject = (JSONObject) jSONArray.get(i);
                    } catch (ClassCastException e2) {
                        k.b("rbx.contacts", "Class cast exception: " + e2.getMessage());
                    } catch (JSONException e3) {
                        k.b("rbx.contacts", "Bad format exception: " + e3.getMessage());
                    }
                    if (jSONObject != null) {
                        long jOptLong = jSONObject.optLong("sourceId", -1L);
                        if (jOptLong > 0 && (cVar = (com.roblox.client.contacts.model.c) b.this.f5899b.get(Long.valueOf(jOptLong))) != null) {
                            com.roblox.client.contacts.model.d dVar2 = new com.roblox.client.contacts.model.d(jOptLong, cVar.b());
                            dVar2.a(jSONObject);
                            if (!dVar2.f()) {
                                dVar2.a(cVar.c());
                                dVar2.b(cVar.b(dVar2.g()));
                                arrayList2.add(dVar2);
                            } else {
                                arrayList.add(dVar2);
                            }
                        }
                    }
                    i++;
                }
                b.this.f5902e = arrayList.size();
                b.this.f = new ArrayList();
                if (b.this.f5902e > 0) {
                    b.this.f.add(new com.roblox.client.contacts.model.d(-2L, ""));
                    Collections.sort(arrayList);
                    b.this.f.addAll(arrayList);
                }
                if (arrayList2.size() > 0) {
                    b.this.f.add(new com.roblox.client.contacts.model.d(-1L, ""));
                    Collections.sort(arrayList2);
                    b.this.f.addAll(arrayList2);
                }
                b.this.f5899b = null;
                com.roblox.client.analytics.d.a("Contacts", "ServerContactsProcessed", b.this.f5901d.a() - b.this.j);
                com.roblox.client.analytics.d.a("Contacts", "TotalProcessingTime", b.this.f5901d.a() - b.this.h);
                b.this.f5898a.post(new Runnable() { // from class: com.roblox.client.contacts.b.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        handlerThread.quit();
                        b.this.a(dVar);
                        dVar.a(b.this.f);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final d dVar) {
        k.b("rbx.contacts", "Getting avatars.");
        StringBuilder sb = new StringBuilder();
        for (int i = 1; i <= this.f5902e; i++) {
            long jD = this.f.get(i).d();
            if (jD > 0) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(jD);
            }
        }
        if (sb.length() == 0) {
            k.c("rbx.contacts", "No valid avatars to request. (" + this.f5902e + ", " + this.f.size() + ")");
            return;
        }
        this.f5900c.a(com.roblox.platform.i.a().i().a(sb.toString(), "150x150", "Png", false).d().a().toString(), null, new com.roblox.client.http.i() { // from class: com.roblox.client.contacts.b.6
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                int iB = jVar.b();
                if (iB == 200) {
                    b.this.b(jVar.a(), dVar);
                } else {
                    com.roblox.client.analytics.d.a("Contacts", "FailureContactsAvatarFetch", Integer.toString(iB));
                }
            }
        }).c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final String str, final d dVar) {
        final HandlerThread handlerThreadA = com.roblox.client.ae.u.a("Parse_Avatars_HeadShots");
        handlerThreadA.setPriority(1);
        handlerThreadA.start();
        com.roblox.client.ae.u.a(handlerThreadA.getLooper()).post(new Runnable() { // from class: com.roblox.client.contacts.b.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONArray jSONArray = new JSONObject(str).getJSONArray("data");
                    k.b("rbx.contacts", "avatars: " + jSONArray.length());
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        b.this.a(jSONObject.optLong("targetId"), jSONObject.optString("imageUrl"));
                    }
                } catch (JSONException e2) {
                    k.e("rbx.contacts", "Error parsing contacts avatar json.");
                    com.roblox.client.analytics.d.a("JSONException thrown while parsing contacts avatars from server. Exception message: " + e2.getMessage());
                }
                b.this.f5898a.post(new Runnable() { // from class: com.roblox.client.contacts.b.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        handlerThreadA.quit();
                        dVar.a(b.this.f.subList(1, b.this.f5902e + 1));
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, String str) {
        int i = 1;
        while (i <= this.f5902e) {
            com.roblox.client.contacts.model.d dVar = this.f.get(i);
            if (j == dVar.d()) {
                dVar.a(str);
                i = this.f5902e;
            }
            i++;
        }
    }
}
