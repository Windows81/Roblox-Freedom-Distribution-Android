package com.roblox.client.contacts;

import android.database.Cursor;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.roblox.client.RobloxSettings;
import com.roblox.client.contacts.model.ContactRequestObject;
import com.roblox.client.http.j;
import com.roblox.client.http.post.ContactsSyncRequestBody;
import com.roblox.client.http.post.FriendRequestActionRequestBody;
import com.roblox.client.http.post.FriendRequestSendRequestBody;
import com.roblox.client.util.n;
import com.roblox.client.util.o;
import com.roblox.client.util.p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f6783a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TreeMap<Long, com.roblox.client.contacts.model.c> f6784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.client.http.f f6785c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private p.a f6786d;
    private int e;
    private ArrayList<com.roblox.client.contacts.model.d> f;
    private String g;
    private long h;
    private long i;
    private long j;

    b(com.roblox.client.http.f fVar, p.a aVar) {
        this.f6785c = fVar;
        this.f6786d = aVar;
    }

    void a(String str) {
        this.g = str;
    }

    void a(com.roblox.client.contacts.model.d dVar) {
        this.f6785c.a(RobloxSettings.getSendFriendRequestUrl(), new FriendRequestSendRequestBody(dVar.d()), null, new com.roblox.client.http.i() { // from class: com.roblox.client.contacts.b.1
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
            }
        }).c();
    }

    void b(com.roblox.client.contacts.model.d dVar) {
        this.f6785c.a(RobloxSettings.acceptFriendRequestUrl(), new FriendRequestActionRequestBody(dVar.d()), null, new com.roblox.client.http.i() { // from class: com.roblox.client.contacts.b.2
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
            }
        }).c();
    }

    void a(final Cursor cursor, final d dVar) {
        this.h = 0L;
        this.i = 0L;
        this.j = 0L;
        this.h = this.f6786d.a();
        final HandlerThread handlerThreadA = o.a("Unique_Contacts_Thread");
        handlerThreadA.setPriority(1);
        Runnable runnable = new Runnable() { // from class: com.roblox.client.contacts.b.3
            @Override // java.lang.Runnable
            public void run() {
                b.this.f6784b = b.this.a(cursor);
                final int size = b.this.f6784b.size();
                final ArrayList arrayListA = b.this.a();
                b.this.f6783a.post(new Runnable() { // from class: com.roblox.client.contacts.b.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.roblox.client.util.g.b("rbx.contacts", "Unique contacts fetched. Total=" + b.this.f6784b.size());
                        handlerThreadA.quit();
                        dVar.a(size);
                        com.roblox.client.b.c.a("Contacts", "LocalContactsProcessed", b.this.f6786d.a() - b.this.h);
                        b.this.a((ArrayList<ContactRequestObject>) arrayListA, dVar);
                    }
                });
            }
        };
        handlerThreadA.start();
        o.a(handlerThreadA.getLooper()).post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TreeMap<Long, com.roblox.client.contacts.model.c> a(Cursor cursor) {
        com.roblox.client.util.g.b("rbx.contacts", "Generating unique contacts.");
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

    private void a(Cursor cursor, com.roblox.client.contacts.model.c cVar) {
        switch (cursor.getString(1)) {
            case "vnd.android.cursor.item/email_v2":
                a(cVar, cursor);
                break;
            case "vnd.android.cursor.item/phone_v2":
                b(cVar, cursor);
                break;
            case "vnd.android.cursor.item/name":
                c(cVar, cursor);
                break;
            case "vnd.android.cursor.item/postal-address_v2":
                d(cVar, cursor);
                break;
        }
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
        com.roblox.client.util.g.b("rbx.contacts", "Getting contacts from server. Total=" + this.f6784b.size());
        if (arrayList.size() == 0) {
            dVar.a(new ArrayList<>());
            return;
        }
        com.roblox.client.http.i iVar = new com.roblox.client.http.i() { // from class: com.roblox.client.contacts.b.4
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                int iB = jVar.b();
                com.roblox.client.util.g.b("rbx.contacts", "Match responseCode:" + iB + ".");
                com.roblox.client.b.c.a("Contacts", "ServerMatchedContacts", b.this.f6786d.a() - b.this.i);
                switch (iB) {
                    case ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION /* 200 */:
                        com.roblox.client.b.c.a("Contacts", "Success", Integer.toString(iB));
                        b.this.j = b.this.f6786d.a();
                        b.this.a(jVar.a(), dVar);
                        dVar.a();
                        break;
                    default:
                        com.roblox.client.b.c.a("Contacts", "FailureContactsSync", Integer.toString(iB));
                        dVar.b(2);
                        break;
                }
            }
        };
        String strA = com.roblox.client.locale.b.a();
        com.roblox.client.util.g.b("rbx.contacts", "countryCode=" + strA + ".");
        String strB = new com.google.gson.e().b(new ContactsSyncRequestBody(arrayList, strA));
        com.roblox.client.http.d dVarA = this.f6785c.a(RobloxSettings.contactsSyncUrl(), strB, null, iVar, RobloxSettings.getJsonContentType());
        this.i = this.f6786d.a();
        dVarA.c();
        if (com.roblox.client.b.bC()) {
            String strB2 = n.b(strB);
            if (b(strB2)) {
                com.roblox.client.util.g.b("rbx.contacts", "Contacts changed. Updating... + " + strB2 + ".");
                dVar.a(strB2);
                this.f6785c.a(RobloxSettings.contactsUpdateUrl(), strB, null, new com.roblox.client.http.i() { // from class: com.roblox.client.contacts.b.5
                    @Override // com.roblox.client.http.i, com.roblox.client.http.l
                    public void a(j jVar) {
                        super.a(jVar);
                        int iB = jVar.b();
                        com.roblox.client.util.g.b("rbx.contacts", "Update responseCode:" + iB + ".");
                        if (iB == 200) {
                            dVar.b();
                        } else {
                            dVar.b(1);
                        }
                    }
                }, RobloxSettings.getJsonContentType()).c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str, final d dVar) {
        final HandlerThread handlerThreadA = o.a("Parse_Merge_Contacts");
        handlerThreadA.setPriority(1);
        handlerThreadA.start();
        o.a(handlerThreadA.getLooper()).post(new Runnable() { // from class: com.roblox.client.contacts.b.6
            @Override // java.lang.Runnable
            public void run() {
                JSONArray jSONArrayC = b.this.c(str);
                if (jSONArrayC == null) {
                    b.this.f6783a.post(new Runnable() { // from class: com.roblox.client.contacts.b.6.1
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
        com.roblox.client.util.g.b("rbx.contacts", "Parsing json.");
        try {
            return new JSONObject(str).getJSONArray("contacts");
        } catch (JSONException e) {
            com.roblox.client.util.g.e("rbx.contacts", "getRobloxContactsFromServer() error parsing response json");
            com.roblox.client.b.c.a("JSONException thrown while parsing contacts from server. Exception message: " + e.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<ContactRequestObject> a() {
        ArrayList<ContactRequestObject> arrayList = new ArrayList<>();
        Iterator<Long> it = this.f6784b.keySet().iterator();
        while (it.hasNext()) {
            arrayList.add(this.f6784b.get(Long.valueOf(it.next().longValue())).d());
            if (arrayList.size() == com.roblox.client.b.bo()) {
                return arrayList;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final JSONArray jSONArray, final d dVar, final HandlerThread handlerThread) {
        new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: com.roblox.client.contacts.b.7
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject;
                com.roblox.client.contacts.model.c cVar;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                com.roblox.client.util.g.b("rbx.contacts", "Server contacts:" + jSONArray.length());
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= jSONArray.length()) {
                        break;
                    }
                    try {
                        jSONObject = (JSONObject) jSONArray.get(i2);
                    } catch (ClassCastException e) {
                        com.roblox.client.util.g.b("rbx.contacts", "Class cast exception: " + e.getMessage());
                        jSONObject = null;
                    } catch (JSONException e2) {
                        com.roblox.client.util.g.b("rbx.contacts", "Bad format exception: " + e2.getMessage());
                        jSONObject = null;
                    }
                    if (jSONObject != null) {
                        long jOptLong = jSONObject.optLong("sourceId", -1L);
                        if (jOptLong > 0 && (cVar = (com.roblox.client.contacts.model.c) b.this.f6784b.get(Long.valueOf(jOptLong))) != null) {
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
                    i = i2 + 1;
                }
                b.this.e = arrayList.size();
                b.this.f = new ArrayList();
                if (b.this.e > 0) {
                    b.this.f.add(new com.roblox.client.contacts.model.d(-2L, ""));
                    Collections.sort(arrayList);
                    b.this.f.addAll(arrayList);
                }
                if (arrayList2.size() > 0) {
                    b.this.f.add(new com.roblox.client.contacts.model.d(-1L, ""));
                    Collections.sort(arrayList2);
                    b.this.f.addAll(arrayList2);
                }
                b.this.f6784b = null;
                com.roblox.client.b.c.a("Contacts", "ServerContactsProcessed", b.this.f6786d.a() - b.this.j);
                com.roblox.client.b.c.a("Contacts", "TotalProcessingTime", b.this.f6786d.a() - b.this.h);
                b.this.f6783a.post(new Runnable() { // from class: com.roblox.client.contacts.b.7.1
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
        com.roblox.client.util.g.b("rbx.contacts", "Getting avatars.");
        ArrayList arrayList = new ArrayList(this.e);
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 <= this.e) {
                arrayList.add(Long.valueOf(this.f.get(i2).d()));
                i = i2 + 1;
            } else {
                this.f6785c.a(RobloxSettings.avatarHeadShotForUserIdsUrl(arrayList), null, new com.roblox.client.http.i() { // from class: com.roblox.client.contacts.b.8
                    @Override // com.roblox.client.http.i, com.roblox.client.http.l
                    public void a(j jVar) {
                        int iB = jVar.b();
                        if (iB == 200) {
                            b.this.b(jVar.a(), dVar);
                        } else {
                            com.roblox.client.b.c.a("Contacts", "FailureContactsAvatarFetch", Integer.toString(iB));
                        }
                    }
                }).c();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final String str, final d dVar) {
        final HandlerThread handlerThreadA = o.a("Parse_Avatars_HeadShots");
        handlerThreadA.setPriority(1);
        handlerThreadA.start();
        o.a(handlerThreadA.getLooper()).post(new Runnable() { // from class: com.roblox.client.contacts.b.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONArray jSONArray = new JSONArray(str);
                    com.roblox.client.util.g.b("rbx.contacts", "avatars: " + jSONArray.length());
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        b.this.a(jSONObject.optLong("UserId"), jSONObject.optString("Url"));
                    }
                } catch (JSONException e) {
                    com.roblox.client.util.g.e("rbx.contacts", "Error parsing contacts avatar json.");
                    com.roblox.client.b.c.a("JSONException thrown while parsing contacts avatars from server. Exception message: " + e.getMessage());
                }
                b.this.f6783a.post(new Runnable() { // from class: com.roblox.client.contacts.b.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        handlerThreadA.quit();
                        dVar.a(b.this.f.subList(1, b.this.e + 1));
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, String str) {
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 <= this.e) {
                com.roblox.client.contacts.model.d dVar = this.f.get(i2);
                if (j == dVar.d()) {
                    dVar.a(str);
                    i2 = this.e;
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }
}
