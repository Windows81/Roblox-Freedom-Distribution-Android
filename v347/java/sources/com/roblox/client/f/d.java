package com.roblox.client.f;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.roblox.client.R;
import com.roblox.client.components.p;
import com.roblox.client.e.w;
import com.roblox.client.n;
import com.roblox.client.util.g;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;

/* JADX INFO: loaded from: classes.dex */
public class d extends n {
    protected Toolbar g;
    protected com.roblox.client.j.c h;
    protected Menu i;
    protected com.roblox.client.j.e j;
    private String l;
    private View.OnClickListener n;
    private com.roblox.client.j.f o;
    protected String e = null;
    protected boolean f = false;
    private int k = -1;
    private boolean m = false;

    @Override // com.roblox.client.n, com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.k = arguments.getInt("TITLE_ID", -1);
            this.l = arguments.getString("TITLE_STRING");
            this.e = arguments.getString("REPORTING_TAB_NAME");
            this.f = arguments.getBoolean("HAS_PARENT");
        }
        this.n = new View.OnClickListener() { // from class: com.roblox.client.f.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!d.this.c() && d.this.f) {
                    d.this.getActivity().onBackPressed();
                }
            }
        };
    }

    @Override // com.roblox.client.n, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        LinearLayout linearLayout = (LinearLayout) layoutInflater.inflate(R.layout.toolbar_frame, viewGroup, false);
        this.g = (Toolbar) linearLayout.findViewById(R.id.toolbar);
        FrameLayout frameLayout = (FrameLayout) linearLayout.findViewById(R.id.content_container);
        frameLayout.addView(super.onCreateView(layoutInflater, frameLayout, bundle));
        a(this.g.getMenu(), getActivity().getMenuInflater());
        return linearLayout;
    }

    @Override // com.roblox.client.n, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        org.greenrobot.eventbus.c.a().a(this);
    }

    @Override // com.roblox.client.n, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStop() {
        org.greenrobot.eventbus.c.a().b(this);
        super.onStop();
    }

    protected void b(Menu menu, MenuInflater menuInflater) {
        this.h = new com.roblox.client.j.c(this);
        this.h.a(menu, menuInflater);
    }

    @j(a = ThreadMode.MAIN)
    public void onUnreadNotificationCountEvent(w wVar) {
        g.a("GWF.onUnreadNotificationCountEvent() " + wVar.a());
        if (this.h != null) {
            this.h.b();
        }
    }

    @j(a = ThreadMode.MAIN)
    public void onAppLocaleChangeEvent(com.roblox.client.e.b bVar) {
        a(bVar, getActivity(), com.roblox.client.locale.a.a());
    }

    void a(com.roblox.client.e.b bVar, Activity activity, com.roblox.client.locale.a aVar) {
        com.roblox.client.locale.c cVarA = bVar.a();
        g.a("rbx.locale", "onAppLanguageChangeEvent(), newLanguageRobloxLocaleValue:  " + cVarA);
        if (aVar.b(cVarA, activity)) {
            activity.recreate();
        }
    }

    @Override // com.roblox.client.m, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.l != null) {
            this.g.setTitle(this.l);
        } else if (this.k == -1) {
            this.g.setTitle(R.string.CommonUI_Features_Heading_Roblox_NormalCase);
        } else {
            this.g.setTitle(this.k);
        }
        p.a(this.g, getContext(), this.f ? this.n : null);
    }

    protected void a(Menu menu, MenuInflater menuInflater) {
        this.i = menu;
        c(menu, menuInflater);
        new com.roblox.client.j.d(this, this.e).a(menu, menuInflater);
        b(menu, menuInflater);
    }

    public void a(int i, boolean z) {
        MenuItem menuItemFindItem = this.i.findItem(i);
        if (menuItemFindItem != null) {
            menuItemFindItem.setVisible(z);
        }
    }

    @Override // com.roblox.client.n, android.support.v4.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (!z) {
            e();
        }
    }

    @Override // com.roblox.client.n, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        e();
    }

    private void e() {
        if (this.h != null) {
            this.h.b();
        }
    }

    @Override // com.roblox.client.n
    public void a(WebView webView, int i) {
        super.a(webView, i);
        a(webView.canGoBack());
    }

    private void a(boolean z) {
        if (this.m != z) {
            g.c("rbx.web", "updateToolbar() canGoBack:" + z);
            this.m = z;
            p.a(this.g, getContext(), (z || this.f) ? this.n : null);
        }
    }

    protected void c(Menu menu, MenuInflater menuInflater) {
        this.o = new com.roblox.client.j.f(this);
        this.j = new com.roblox.client.j.e(this);
        this.j.a(this.o);
        this.j.a(menu, menuInflater);
    }

    @Override // com.roblox.client.n
    public void a(String str) {
        d(str);
    }

    private void d(String str) {
        if (this.j != null && this.o != null) {
            this.o.b(str);
            this.j.a();
        }
    }
}
