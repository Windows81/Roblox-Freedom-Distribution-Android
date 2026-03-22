package com.roblox.client.t;

import android.app.Activity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.a;
import androidx.appcompat.widget.SearchView;
import androidx.fragment.app.Fragment;
import com.roblox.client.components.RobloxToolbar;
import com.roblox.client.components.k;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.x;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Fragment f7499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MenuItem f7500b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Menu f7501c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RobloxToolbar f7502d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f7503e;

    public interface a extends com.roblox.client.ab.c {
        String a();

        boolean a(SearchView searchView, String str);

        boolean a(String str);

        int b();
    }

    public f(Fragment fragment) {
        this.f7499a = fragment;
    }

    public void a(Menu menu) {
        this.f7501c = menu;
    }

    public void a(RobloxToolbar robloxToolbar) {
        this.f7502d = robloxToolbar;
    }

    public void a(a aVar) {
        this.f7503e = aVar;
    }

    public MenuItem a(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(o.h.menu_button_search, menu);
        MenuItem menuItemFindItem = menu.findItem(o.f.action_search);
        this.f7500b = menuItemFindItem;
        menuItemFindItem.setIcon(this.f7499a.s().getDrawable(b()));
        d();
        return this.f7500b;
    }

    /* JADX INFO: renamed from: com.roblox.client.t.f$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7510a;

        static {
            int[] iArr = new int[com.roblox.client.ab.e.values().length];
            f7510a = iArr;
            try {
                iArr[com.roblox.client.ab.e.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7510a[com.roblox.client.ab.e.CLASSIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7510a[com.roblox.client.ab.e.DARK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private int b() {
        int i = AnonymousClass4.f7510a[this.f7503e.c().ordinal()];
        if (i == 1) {
            return o.e.topbar_ic_search_light;
        }
        if (i == 2) {
            return o.e.topbar_ic_search;
        }
        return o.e.topbar_ic_search_dark;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c() {
        int i = AnonymousClass4.f7510a[this.f7503e.c().ordinal()];
        if (i == 1) {
            return o.e.topbar_ic_back_light;
        }
        if (i == 2) {
            return o.e.topbar_ic_back;
        }
        return o.e.topbar_ic_back_dark;
    }

    public void a() {
        ((SearchView) this.f7500b.getActionView()).setQueryHint(this.f7503e.a());
        boolean z = (com.roblox.client.b.cz() && this.f7503e.b() == 2) ? false : true;
        this.f7500b.setVisible(z);
        this.f7500b.setEnabled(z);
    }

    private void d() {
        final SearchView searchView = (SearchView) this.f7500b.getActionView();
        this.f7500b.setOnActionExpandListener(new MenuItem.OnActionExpandListener() { // from class: com.roblox.client.t.f.1
            @Override // android.view.MenuItem.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                if (f.this.f7502d != null) {
                    searchView.post(new Runnable() { // from class: com.roblox.client.t.f.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            k.a(f.this.f7502d, f.this.c());
                        }
                    });
                }
                f fVar = f.this;
                fVar.a(fVar.f7501c, f.this.f7500b, false);
                f fVar2 = f.this;
                fVar2.a(fVar2.f7503e.b(), "searchOpen");
                return true;
            }

            @Override // android.view.MenuItem.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                f fVar = f.this;
                fVar.a(fVar.f7501c, f.this.f7500b, true);
                f fVar2 = f.this;
                fVar2.a(fVar2.f7503e.b(), "searchClose");
                return true;
            }
        });
        EditText editText = (EditText) searchView.findViewById(a.f.search_src_text);
        editText.setTextColor(-16777216);
        editText.setHintTextColor(-7829368);
        com.roblox.client.components.h.a(editText, editText.getContext(), "SourceSansPro-Regular.ttf");
        searchView.findViewById(a.f.search_plate).setBackgroundResource(o.e.textfield_searchview_background);
        searchView.setQueryHint(searchView.getContext().getString(o.j.Search_GlobalSearch_Label_SearchWord));
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.roblox.client.t.f.2
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                return f.this.f7503e.a(searchView, str);
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                return f.this.f7503e.a(str);
            }
        });
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.t.f.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                com.roblox.client.ae.k.b("SearchMenuOption", "... onFocusChange: hasFocus = " + z);
                if (z) {
                    return;
                }
                if (f.this.f7499a != null) {
                    x.a((Activity) f.this.f7499a.r());
                }
                f.this.f7500b.collapseActionView();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Menu menu, MenuItem menuItem, boolean z) {
        if (menu != null) {
            for (int i = 0; i < menu.size(); i++) {
                MenuItem item = menu.getItem(i);
                if (item != menuItem) {
                    item.setVisible(z);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str) {
        com.roblox.client.ae.k.b("SearchMenuOption", "reportEvents: searchType = " + i + ", buttonEvent = " + str);
        if (i == 1) {
            p.b("nativeMain", str, "users");
            return;
        }
        if (i == 2) {
            p.b("nativeMain", str, "games");
        } else if (i == 3) {
            p.b("nativeMain", str, "catalog");
        } else {
            if (i != 4) {
                return;
            }
            p.a("nativeMain|friends", str);
        }
    }
}
