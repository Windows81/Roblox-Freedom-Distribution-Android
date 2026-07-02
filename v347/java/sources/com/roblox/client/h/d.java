package com.roblox.client.h;

import android.util.Log;
import com.roblox.client.h.t;
import java.util.ArrayList;
import java.util.HashSet;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class d extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7025d;
    private int e;
    private a f;

    public interface a {
        void a(boolean z, int i, int i2);
    }

    public d(int i, int i2, a aVar) {
        this.f7025d = i;
        this.e = i2;
        this.f = aVar;
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        a(true, this.e, a(this.e, (this.e - 1) * this.f7025d));
    }

    private int a(int i, int i2) throws Throwable {
        String strG = com.roblox.platform.g.a().b().a(i, this.f7025d).a().d().g();
        Log.v(com.roblox.client.chat.a.f6496a, "payload:" + strG);
        HashSet<Long> hashSet = new HashSet<>();
        ArrayList arrayList = new ArrayList();
        com.roblox.client.chat.a.e eVar = new com.roblox.client.chat.a.e();
        JSONArray jSONArray = new JSONArray(strG);
        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
            com.roblox.client.chat.a.d dVar = new com.roblox.client.chat.a.d(jSONArray.getJSONObject(i3));
            eVar.add(dVar);
            a(dVar, hashSet);
            arrayList.add(Long.valueOf(dVar.c()));
        }
        com.roblox.client.chat.a.a.a().a(eVar, i2);
        int length = jSONArray.length() + i2;
        if (this.f7025d - jSONArray.length() > 0) {
            com.roblox.client.chat.a.a.a().a(length);
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (Long l : hashSet) {
            if (com.roblox.client.chat.a.n.a().b(l.longValue()) == -1) {
                arrayList3.add(l);
            }
            com.roblox.client.chat.a.m mVarA = com.roblox.client.chat.a.n.a().a(l.longValue());
            if (mVarA != null && mVarA.d().isEmpty()) {
                arrayList2.add(l);
            }
        }
        if (!arrayList2.isEmpty()) {
            com.roblox.client.i.g.a().a(new m((ArrayList<Long>) arrayList2));
        }
        if (!arrayList3.isEmpty()) {
            com.roblox.client.i.g.a().a(new q(arrayList3));
        }
        com.roblox.client.i.g.a().a(new b(arrayList, 1));
        return eVar.size();
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
        a(false, this.e, 0);
    }

    private void a(final boolean z, final int i, final int i2) {
        if (this.f != null) {
            m().post(new Runnable() { // from class: com.roblox.client.h.d.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.f.a(z, i, i2);
                }
            });
        }
    }

    private void a(com.roblox.client.chat.a.d dVar, HashSet<Long> hashSet) {
        ArrayList<com.roblox.client.chat.a.m> arrayListD = dVar.d();
        if (arrayListD != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < arrayListD.size()) {
                    hashSet.add(Long.valueOf(arrayListD.get(i2).a()));
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }
}
