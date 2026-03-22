package com.roblox.client.n;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.roblox.client.ActivityNativeMain;
import com.roblox.client.components.RobloxToolbar;
import com.roblox.client.components.k;
import com.roblox.client.l.n;
import com.roblox.client.locale.i;
import com.roblox.client.o;
import com.roblox.client.t.e;
import com.roblox.client.t.f;
import com.roblox.client.t.g;
import com.roblox.client.t.h;
import com.roblox.client.v;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends v {
    protected RobloxToolbar aC;
    protected RobloxToolbar aD;
    protected com.roblox.client.t.d aE;
    protected Menu aF;
    protected f aG;
    private String aI;
    private JSONObject aJ;
    private boolean aK;
    private View.OnClickListener aO;
    private h aP;
    private ProgressDialog aQ;
    protected String az = null;
    protected boolean aA = false;
    private int aH = -1;
    protected boolean aB = false;
    private boolean aL = false;
    private boolean aM = false;
    private View aN = null;

    @Override // com.roblox.client.v, com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void b(Bundle bundle) {
        super.b(bundle);
        Bundle bundleN = n();
        if (bundleN != null) {
            this.aH = bundleN.getInt("TITLE_ID", -1);
            this.aI = bundleN.getString("TITLE_STRING");
            this.az = bundleN.getString("REPORTING_TAB_NAME");
            this.aA = bundleN.getBoolean("HAS_PARENT");
            this.aB = bundleN.getBoolean("HIDE_ACCESSORY_BUTTONS");
            try {
                this.aJ = new JSONObject(bundleN.getString("SEARCH_PARAMS", null));
            } catch (NullPointerException | JSONException unused) {
            }
        }
        if (this.aJ == null) {
            this.aJ = new JSONObject();
        }
        this.aO = new View.OnClickListener() { // from class: com.roblox.client.n.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (b.this.at() || !b.this.aA) {
                    return;
                }
                b.this.r().onBackPressed();
            }
        };
    }

    @Override // com.roblox.client.v, androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        LinearLayout linearLayout = (LinearLayout) layoutInflater.inflate(o.g.toolbar_frame, viewGroup, false);
        this.aC = (RobloxToolbar) linearLayout.findViewById(o.f.toolbar1);
        RobloxToolbar robloxToolbar = (RobloxToolbar) linearLayout.findViewById(o.f.toolbar2);
        this.aD = robloxToolbar;
        if (this.aK) {
            this.aC.setVisibility(8);
        } else {
            robloxToolbar.setThemeColorDelegate(new RobloxToolbar.e());
            this.aC.setIconDelegate(new RobloxToolbar.b());
            this.aC.setThemeColorDelegate(new RobloxToolbar.c());
            this.aC.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.n.b.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    b.this.aM = true;
                    androidx.fragment.app.c cVarR = b.this.r();
                    if (cVarR != null) {
                        cVarR.onBackPressed();
                    }
                }
            });
        }
        FrameLayout frameLayout = (FrameLayout) linearLayout.findViewById(o.f.content_container);
        frameLayout.addView(super.a(layoutInflater, frameLayout, bundle));
        d(this.aD.getMenu(), r().getMenuInflater());
        this.aN = linearLayout;
        if (!this.aw) {
            m(false);
        }
        return linearLayout;
    }

    @Override // com.roblox.client.v, com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        org.greenrobot.eventbus.c.a().a(this);
    }

    @Override // com.roblox.client.v, com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void i() {
        org.greenrobot.eventbus.c.a().b(this);
        super.i();
    }

    protected void c(Menu menu, MenuInflater menuInflater) {
        com.roblox.client.t.d dVar = new com.roblox.client.t.d(this);
        this.aE = dVar;
        dVar.a(menu, menuInflater);
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (context instanceof ActivityNativeMain) {
            this.aK = true;
        }
    }

    @Override // com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void d(Bundle bundle) {
        super.d(bundle);
        String str = this.aI;
        if (str != null) {
            this.aD.setTitle(str);
        } else {
            int i = this.aH;
            if (i == -1) {
                this.aD.setTitle(o.j.CommonUI_Features_Heading_Roblox_NormalCase);
            } else {
                this.aD.setTitle(i);
            }
        }
        k.a(this.aD, this.aA ? this.aO : null);
    }

    protected void d(Menu menu, MenuInflater menuInflater) {
        this.aF = menu;
        if (!this.aB) {
            a(menu, menuInflater, 34);
            new e(this, this.az).a(menu, menuInflater);
            c(menu, menuInflater);
        } else if (this.aJ.length() > 0) {
            a(menu, menuInflater, 54);
        }
    }

    @Override // com.roblox.client.v
    public boolean at() {
        if (this.aM) {
            return false;
        }
        return super.at();
    }

    @Override // com.roblox.client.v, com.roblox.client.s, com.roblox.client.ab.d.a
    public void a(com.roblox.client.ab.e eVar) {
        this.aD.a(eVar);
        this.aC.a(eVar);
        androidx.fragment.app.c cVarR = r();
        if (cVarR != null) {
            Menu menu = this.aD.getMenu();
            menu.clear();
            d(menu, cVarR.getMenuInflater());
        }
        super.a(eVar);
    }

    @Override // com.roblox.client.v, androidx.fragment.app.Fragment
    public void d(boolean z) {
        super.d(z);
        if (z) {
            return;
        }
        au();
    }

    @Override // com.roblox.client.v, androidx.fragment.app.Fragment
    public void F() {
        super.F();
        au();
    }

    private void au() {
        com.roblox.client.t.d dVar = this.aE;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // com.roblox.client.v
    public void a(WebView webView, int i) {
        super.a(webView, i);
        o(webView.canGoBack());
    }

    private void o(boolean z) {
        if (this.aL != z) {
            com.roblox.client.ae.k.c("rbx.web", "updateToolbar() canGoBack:" + z);
            this.aL = z;
            k.a(this.aD, (z || this.aA) ? this.aO : null);
        }
    }

    @Override // com.roblox.client.v
    public void m(boolean z) {
        super.m(z);
        View view = this.aN;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.roblox.client.v
    public void a(com.roblox.client.app.d dVar) {
        super.a(dVar);
        if (dVar.f5727b != null) {
            this.aD.setTitle(dVar.f5727b);
        }
    }

    protected void a(Menu menu, MenuInflater menuInflater, int i) {
        String strOptString;
        if (!com.roblox.client.b.cm() && (strOptString = this.aJ.optString("searchType", null)) != null) {
            this.aP = new g(this, strOptString);
        }
        if (this.aP == null) {
            this.aP = new h(this);
        }
        f fVar = new f(this);
        this.aG = fVar;
        fVar.a(menu);
        this.aG.a(this.aD);
        this.aG.a(this.aP);
        this.aG.a(menu, menuInflater);
        k.a(this.aD, p(), o.f.action_search, i);
    }

    @Override // com.roblox.client.v
    public void d(String str) {
        g(str);
    }

    private void g(String str) {
        h hVar;
        if (this.aG == null || (hVar = this.aP) == null) {
            return;
        }
        hVar.b(str);
        this.aG.a();
    }

    private ProgressDialog b(Context context, String str) {
        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setTitle((CharSequence) null);
        progressDialog.setMessage(str);
        progressDialog.setIndeterminate(true);
        progressDialog.setCancelable(false);
        progressDialog.setCanceledOnTouchOutside(false);
        progressDialog.setOnCancelListener(null);
        return progressDialog;
    }

    @j(a = ThreadMode.MAIN)
    public void onUnreadNotificationCountEvent(n nVar) {
        com.roblox.client.ae.k.a("GWF.onUnreadNotificationCountEvent() " + nVar.a());
        com.roblox.client.t.d dVar = this.aE;
        if (dVar != null) {
            dVar.b();
        }
    }

    @j(a = ThreadMode.MAIN)
    public void onAppLocaleChangeEvent(com.roblox.client.l.a aVar) {
        final androidx.fragment.app.c cVarR = r();
        if (cVarR != null) {
            ProgressDialog progressDialogB = b(cVarR, a(o.j.CommonUI_Features_Label_SettingLanguage));
            this.aQ = progressDialogB;
            progressDialogB.show();
            a(cVarR, new i(), new i.a() { // from class: com.roblox.client.n.b.3
                @Override // com.roblox.client.locale.i.a
                public void a(boolean z) {
                    com.roblox.client.ae.k.a("rbx.locale", "onAppLanguageChangeEvent(), Api call to get locale values");
                    Activity activity = cVarR;
                    if (activity == null || !activity.isFinishing()) {
                        b.this.av();
                        if (z) {
                            cVarR.recreate();
                            Activity activity2 = cVarR;
                            if (activity2 instanceof ActivityNativeMain) {
                                return;
                            }
                            activity2.finish();
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void av() {
        ProgressDialog progressDialog = this.aQ;
        if (progressDialog == null || !progressDialog.isShowing()) {
            return;
        }
        this.aQ.dismiss();
    }

    @Override // com.roblox.client.v, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void j() {
        av();
        super.j();
    }

    void a(Activity activity, i iVar, i.a aVar) {
        iVar.a(activity, true, aVar);
    }
}
