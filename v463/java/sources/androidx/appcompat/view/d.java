package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import androidx.appcompat.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Resources.Theme f742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Configuration f744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Resources f745e;

    public d() {
        super(null);
    }

    public d(Context context, int i) {
        super(context);
        this.f741a = i;
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f742b = theme;
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
        if (this.f745e == null) {
            if (this.f744d == null) {
                this.f745e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f745e = createConfigurationContext(this.f744d).getResources();
            }
        }
        return this.f745e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f741a != i) {
            this.f741a = i;
            c();
        }
    }

    public int a() {
        return this.f741a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f742b;
        if (theme != null) {
            return theme;
        }
        if (this.f741a == 0) {
            this.f741a = a.i.Theme_AppCompat_Light;
        }
        c();
        return this.f742b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f743c == null) {
                this.f743c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f743c;
        }
        return getBaseContext().getSystemService(str);
    }

    protected void a(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    private void c() {
        boolean z = this.f742b == null;
        if (z) {
            this.f742b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f742b.setTo(theme);
            }
        }
        a(this.f742b, this.f741a, z);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }
}
