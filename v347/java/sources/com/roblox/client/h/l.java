package com.roblox.client.h;

import com.roblox.client.h.t;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class l extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f7053d;

    public interface a {
        void a();
    }

    public l(a aVar) {
        this.f7053d = aVar;
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
        a("Could not complete request for settings groups");
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        o();
    }

    private void o() throws Throwable {
        String strA = com.roblox.client.util.l.a(com.roblox.platform.g.a().c().a().a());
        if (!strA.isEmpty()) {
            try {
                JSONArray jSONArray = new JSONArray(strA);
                if (jSONArray.length() != 0) {
                    ArrayList<com.roblox.client.k.e> arrayList = new ArrayList<>(jSONArray.length());
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add(new com.roblox.client.k.e(jSONArray.getJSONObject(i)));
                    }
                    com.roblox.client.q.d.a().a(arrayList);
                    p();
                }
            } catch (JSONException e) {
                a("Unable to parse settings groups");
            }
        }
    }

    private void p() {
        if (this.f7053d != null) {
            m().post(new Runnable() { // from class: com.roblox.client.h.l.1
                @Override // java.lang.Runnable
                public void run() {
                    l.this.f7053d.a();
                }
            });
        }
    }
}
