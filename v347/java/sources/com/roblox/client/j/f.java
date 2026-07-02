package com.roblox.client.j;

import android.support.v7.widget.SearchView;
import com.roblox.client.R;
import com.roblox.client.e.aa;
import com.roblox.client.j.e;
import com.roblox.client.n;

/* JADX INFO: loaded from: classes.dex */
public class f implements e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private n f7245a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7246b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f7247c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f7248d;
    private final String e;
    private final String f;

    public f(n nVar) {
        this.f7245a = nVar;
        this.f7247c = this.f7245a.getString(R.string.Search_GlobalSearch_Example_SearchGames);
        this.f7248d = this.f7245a.getString(R.string.Search_GlobalSearch_Example_SearchPlayers);
        this.e = this.f7245a.getString(R.string.Search_GlobalSearch_Example_SearchCatalog);
        this.f = this.f7245a.getString(R.string.Search_GlobalSearch_Example_SearchGroups);
    }

    @Override // com.roblox.client.j.e.a
    public String a() {
        switch (b()) {
            case 1:
            case 4:
                return this.f7248d;
            case 2:
            default:
                return this.f7247c;
            case 3:
                return this.e;
            case 5:
                return this.f;
        }
    }

    @Override // com.roblox.client.j.e.a
    public int b() {
        String strC = c();
        if (strC == null) {
            return 2;
        }
        if (strC.contains("profile") || strC.contains("friends") || strC.contains("users")) {
            return 1;
        }
        if (strC.contains("games")) {
            return 2;
        }
        if (strC.contains("catalog")) {
            return 3;
        }
        return strC.contains("groups") ? 5 : 2;
    }

    private String c() {
        return this.f7246b != null ? this.f7246b : this.f7245a.b();
    }

    public void b(String str) {
        this.f7246b = str;
    }

    @Override // com.roblox.client.j.e.a
    public boolean a(SearchView searchView, String str) {
        org.greenrobot.eventbus.c.a().c(new aa(b(), str));
        searchView.onActionViewCollapsed();
        return true;
    }

    @Override // com.roblox.client.j.e.a
    public boolean a(String str) {
        return false;
    }
}
