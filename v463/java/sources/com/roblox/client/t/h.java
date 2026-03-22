package com.roblox.client.t;

import androidx.appcompat.widget.SearchView;
import com.roblox.client.l.p;
import com.roblox.client.o;
import com.roblox.client.t.f;
import com.roblox.client.v;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h implements f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private v f7512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f7514c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f7515d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f7516e;
    private final String f;
    private com.roblox.client.ab.c g = new com.roblox.client.ab.f();

    @Override // com.roblox.client.t.f.a
    public boolean a(String str) {
        return false;
    }

    public h(v vVar) {
        this.f7512a = vVar;
        this.f7514c = vVar.a(o.j.Search_GlobalSearch_Example_SearchGames);
        this.f7515d = this.f7512a.a(o.j.Search_GlobalSearch_Example_SearchPlayers);
        this.f7516e = this.f7512a.a(o.j.Search_GlobalSearch_Example_SearchCatalog);
        this.f = this.f7512a.a(o.j.Search_GlobalSearch_Example_SearchGroups);
    }

    @Override // com.roblox.client.t.f.a
    public String a() {
        int iB = b();
        if (iB != 1) {
            if (iB == 3) {
                return this.f7516e;
            }
            if (iB != 4) {
                if (iB == 5) {
                    return this.f;
                }
                return this.f7514c;
            }
        }
        return this.f7515d;
    }

    @Override // com.roblox.client.t.f.a
    public int b() {
        String strD = d();
        if (strD == null) {
            return 2;
        }
        if (strD.contains("profile") || strD.contains("friends") || strD.contains("users")) {
            return 1;
        }
        if (strD.contains("games")) {
            return 2;
        }
        if (strD.contains("catalog")) {
            return 3;
        }
        return strD.contains("groups") ? 5 : 2;
    }

    private String d() {
        String str = this.f7513b;
        return str != null ? str : this.f7512a.as();
    }

    public void b(String str) {
        this.f7513b = str;
    }

    @Override // com.roblox.client.t.f.a
    public boolean a(SearchView searchView, String str) {
        org.greenrobot.eventbus.c.a().c(new p(b(), str));
        searchView.onActionViewCollapsed();
        return true;
    }

    @Override // com.roblox.client.ab.c
    public com.roblox.client.ab.e c() {
        return this.g.c();
    }
}
