package com.roblox.client.chat.a;

import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f6506a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f6507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6508c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f6509d;
    private ArrayList<m> e;
    private String f;
    private String g;
    private boolean h;

    public d() {
        this(-1L);
    }

    public d(long j) {
        this.e = new ArrayList<>();
        this.f6506a = j;
    }

    public d(JSONObject jSONObject) throws JSONException {
        this.e = new ArrayList<>();
        this.f6506a = jSONObject.getLong("id");
        this.f = jSONObject.optString("title", null);
        this.f6508c = jSONObject.optString("conversationType");
        this.f6507b = jSONObject.optBoolean("hasUnreadMessages");
        JSONArray jSONArray = jSONObject.getJSONArray("participants");
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if ("User".equals(jSONObject2.getString("type"))) {
                    m mVar = new m(jSONObject2.optLong("targetId", -1L), jSONObject2.optString("name"));
                    n.a().a(mVar);
                    this.e.add(mVar);
                }
            }
            l();
        }
        this.f6509d = jSONObject.getJSONObject("initiator").getLong("targetId");
        this.h = jSONObject.getJSONObject("conversationTitle").optBoolean("isDefaultTitle");
    }

    public long a() {
        return this.f6509d;
    }

    public void a(long j) {
        this.f6509d = j;
    }

    private void l() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            if (this.e.get(i2).a() != com.roblox.client.i.h.a().b()) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(this.e.get(i2).b());
                i++;
            }
        }
        this.g = sb.toString();
    }

    public String b() {
        return c(false);
    }

    private String c(boolean z) {
        if (this.f != null || z) {
            return this.f;
        }
        if (this.g != null) {
            return this.g;
        }
        return "";
    }

    public void a(String str) {
        this.f = str;
    }

    public long c() {
        return this.f6506a;
    }

    public void b(long j) {
        this.f6506a = j;
    }

    public ArrayList<m> d() {
        return this.e;
    }

    public int e() {
        if (this.e != null) {
            return this.e.size();
        }
        return 0;
    }

    public boolean f() {
        return this.h;
    }

    public void a(boolean z) {
        this.h = z;
    }

    public long g() {
        if ("OneToOneConversation".equals(i()) && this.e != null) {
            for (m mVar : this.e) {
                if (mVar.a() != com.roblox.client.i.h.a().b()) {
                    return mVar.a();
                }
            }
        }
        return -1L;
    }

    public ArrayList<Long> h() {
        ArrayList<Long> arrayList = new ArrayList<>();
        Iterator<m> it = this.e.iterator();
        while (it.hasNext()) {
            arrayList.add(Long.valueOf(it.next().a()));
        }
        return arrayList;
    }

    public String i() {
        return this.f6508c;
    }

    public void b(String str) {
        this.f6508c = str;
    }

    private void a(ArrayList<m> arrayList) {
        this.e = new ArrayList<>(arrayList);
    }

    public boolean j() {
        return this.f6507b;
    }

    public void b(boolean z) {
        this.f6507b = z;
    }

    public void a(d dVar) {
        if (dVar != this) {
            a(dVar.d());
            l();
            a(dVar.c(true));
            a(dVar.a());
            b(dVar.j());
            b(dVar.i());
            a(dVar.f());
        }
    }

    @Override // com.roblox.client.chat.a.f
    public String k() {
        return c(c());
    }

    public static String c(long j) {
        return "Conversation" + j;
    }
}
