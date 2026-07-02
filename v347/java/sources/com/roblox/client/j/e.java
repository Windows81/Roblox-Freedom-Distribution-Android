package com.roblox.client.j;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.view.g;
import android.support.v7.widget.SearchView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import com.roblox.client.R;
import com.roblox.client.i;
import com.roblox.client.p;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Fragment f7236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MenuItem f7237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f7238c;

    public interface a {
        String a();

        boolean a(SearchView searchView, String str);

        boolean a(String str);

        int b();
    }

    public e(Fragment fragment) {
        this.f7236a = fragment;
    }

    public void a(a aVar) {
        this.f7238c = aVar;
    }

    public MenuItem a(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.menu_button_search, menu);
        this.f7237b = menu.findItem(R.id.action_search);
        b();
        return this.f7237b;
    }

    public void a() {
        ((SearchView) this.f7237b.getActionView()).setQueryHint(this.f7238c.a());
    }

    public void b() {
        final SearchView searchView = (SearchView) this.f7237b.getActionView();
        searchView.setVisibility(0);
        this.f7237b.setEnabled(true);
        ImageView imageView = (ImageView) searchView.findViewById(R.id.search_button);
        imageView.setImageResource(R.drawable.icon_search_32x32);
        imageView.setOnTouchListener(new View.OnTouchListener() { // from class: com.roblox.client.j.e.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                searchView.setImeOptions(3);
                if (motionEvent.getAction() == 0) {
                    switch (e.this.f7238c.b()) {
                        case 1:
                            i.a("nativeMain", "searchOpen", "users");
                            break;
                        case 2:
                            i.a("nativeMain", "searchOpen", "games");
                            break;
                        case 3:
                            i.a("nativeMain", "searchOpen", "catalog");
                            break;
                        case 4:
                            i.b("nativeMain|friends", "searchOpen");
                            break;
                    }
                    return false;
                }
                return false;
            }
        });
        EditText editText = (EditText) searchView.findViewById(R.id.search_src_text);
        editText.setTextColor(-1);
        editText.setHintTextColor(-1);
        searchView.findViewById(R.id.search_plate).setBackgroundResource(R.drawable.textfield_searchview_holo_light);
        ImageView imageView2 = (ImageView) searchView.findViewById(R.id.search_close_btn);
        imageView2.setImageResource(R.drawable.icon_close_14x14);
        imageView2.setOnTouchListener(new View.OnTouchListener() { // from class: com.roblox.client.j.e.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    switch (e.this.f7238c.b()) {
                        case 1:
                            i.a("nativeMain", "searchClose", "users");
                            break;
                        case 2:
                            i.a("nativeMain", "searchClose", "games");
                            break;
                        case 3:
                            i.a("nativeMain", "searchClose", "catalog");
                            break;
                        case 4:
                            i.b("nativeMain|friends", "searchClose");
                            break;
                    }
                    return false;
                }
                return false;
            }
        });
        searchView.setQueryHint(searchView.getContext().getString(R.string.Search_GlobalSearch_Label_SearchWord));
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.roblox.client.j.e.3
            @Override // android.support.v7.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String str) {
                return e.this.f7238c.a(searchView, str);
            }

            @Override // android.support.v7.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String str) {
                return e.this.f7238c.a(str);
            }
        });
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.roblox.client.j.e.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (!z) {
                    if (e.this.f7236a != null) {
                        p.a((Activity) e.this.f7236a.getActivity());
                    }
                    SearchView searchView2 = (SearchView) g.a(e.this.f7237b);
                    e.this.f7237b.collapseActionView();
                    searchView2.onActionViewCollapsed();
                }
            }
        });
    }
}
