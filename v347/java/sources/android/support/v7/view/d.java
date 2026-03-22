package android.support.v7.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.support.v7.a.a;
import android.view.LayoutInflater;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class d extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1318a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Resources.Theme f1319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f1320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Configuration f1321d;
    private Resources e;

    public d() {
        super(null);
    }

    public d(Context context, int i) {
        super(context);
        this.f1318a = i;
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f1319b = theme;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return b();
    }

    private Resources b() {
        if (this.e == null) {
            if (this.f1321d == null) {
                this.e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.e = createConfigurationContext(this.f1321d).getResources();
            }
        }
        return this.e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f1318a != i) {
            this.f1318a = i;
            c();
        }
    }

    public int a() {
        return this.f1318a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        if (this.f1319b != null) {
            return this.f1319b;
        }
        if (this.f1318a == 0) {
            this.f1318a = a.i.Theme_AppCompat_Light;
        }
        c();
        return this.f1319b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f1320c == null) {
            this.f1320c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f1320c;
    }

    protected void a(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    private void c() {
        boolean z = this.f1319b == null;
        if (z) {
            this.f1319b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f1319b.setTo(theme);
            }
        }
        a(this.f1319b, this.f1318a, z);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }
}
