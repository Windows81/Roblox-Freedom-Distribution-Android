package android.support.v7.app;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.f;
import android.support.v7.view.f;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ActionMode;
import android.view.Window;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class i extends h {
    private int t;
    private boolean u;
    private boolean v;
    private b w;

    i(Context context, Window window, d dVar) {
        super(context, window, dVar);
        this.t = -100;
        this.v = true;
    }

    @Override // android.support.v7.app.k, android.support.v7.app.e
    public void a(Bundle bundle) {
        super.a(bundle);
        if (bundle != null && this.t == -100) {
            this.t = bundle.getInt("appcompat:local_night_mode", -100);
        }
    }

    @Override // android.support.v7.app.f
    Window.Callback a(Window.Callback callback) {
        return new a(callback);
    }

    @Override // android.support.v7.app.f
    public boolean o() {
        return this.v;
    }

    @Override // android.support.v7.app.f, android.support.v7.app.e
    public boolean i() {
        boolean zH = false;
        int iW = w();
        int iD = d(iW);
        if (iD != -1) {
            zH = h(iD);
        }
        if (iW == 0) {
            x();
            this.w.c();
        }
        this.u = true;
        return zH;
    }

    @Override // android.support.v7.app.f, android.support.v7.app.e
    public void c() {
        super.c();
        i();
    }

    @Override // android.support.v7.app.k, android.support.v7.app.f, android.support.v7.app.e
    public void d() {
        super.d();
        if (this.w != null) {
            this.w.d();
        }
    }

    int d(int i) {
        switch (i) {
            case -100:
                return -1;
            case 0:
                x();
                return this.w.a();
            default:
                return i;
        }
    }

    private int w() {
        return this.t != -100 ? this.t : j();
    }

    @Override // android.support.v7.app.f, android.support.v7.app.e
    public void c(Bundle bundle) {
        super.c(bundle);
        if (this.t != -100) {
            bundle.putInt("appcompat:local_night_mode", this.t);
        }
    }

    @Override // android.support.v7.app.k, android.support.v7.app.f, android.support.v7.app.e
    public void g() {
        super.g();
        if (this.w != null) {
            this.w.d();
        }
    }

    private boolean h(int i) {
        Resources resources = this.f1230a.getResources();
        Configuration configuration = resources.getConfiguration();
        int i2 = configuration.uiMode & 48;
        int i3 = i == 2 ? 32 : 16;
        if (i2 != i3) {
            if (y()) {
                ((Activity) this.f1230a).recreate();
            } else {
                Configuration configuration2 = new Configuration(configuration);
                DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
                resources.updateConfiguration(configuration2, displayMetrics);
                if (Build.VERSION.SDK_INT < 26) {
                    n.a(resources);
                }
            }
            return true;
        }
        return false;
    }

    private void x() {
        if (this.w == null) {
            this.w = new b(q.a(this.f1230a));
        }
    }

    private boolean y() {
        if (!this.u || !(this.f1230a instanceof Activity)) {
            return false;
        }
        try {
            return (this.f1230a.getPackageManager().getActivityInfo(new ComponentName(this.f1230a, this.f1230a.getClass()), 0).configChanges & 512) == 0;
        } catch (PackageManager.NameNotFoundException e) {
            Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
            return true;
        }
    }

    class a extends f.a {
        a(Window.Callback callback) {
            super(callback);
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return i.this.o() ? a(callback) : super.onWindowStartingActionMode(callback);
        }

        final ActionMode a(ActionMode.Callback callback) {
            f.a aVar = new f.a(i.this.f1230a, callback);
            android.support.v7.view.b bVarB = i.this.b(aVar);
            if (bVarB != null) {
                return aVar.b(bVarB);
            }
            return null;
        }
    }

    final class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private q f1239b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1240c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private BroadcastReceiver f1241d;
        private IntentFilter e;

        b(q qVar) {
            this.f1239b = qVar;
            this.f1240c = qVar.a();
        }

        final int a() {
            this.f1240c = this.f1239b.a();
            return this.f1240c ? 2 : 1;
        }

        final void b() {
            boolean zA = this.f1239b.a();
            if (zA != this.f1240c) {
                this.f1240c = zA;
                i.this.i();
            }
        }

        final void c() {
            d();
            if (this.f1241d == null) {
                this.f1241d = new BroadcastReceiver() { // from class: android.support.v7.app.i.b.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        b.this.b();
                    }
                };
            }
            if (this.e == null) {
                this.e = new IntentFilter();
                this.e.addAction("android.intent.action.TIME_SET");
                this.e.addAction("android.intent.action.TIMEZONE_CHANGED");
                this.e.addAction("android.intent.action.TIME_TICK");
            }
            i.this.f1230a.registerReceiver(this.f1241d, this.e);
        }

        final void d() {
            if (this.f1241d != null) {
                i.this.f1230a.unregisterReceiver(this.f1241d);
                this.f1241d = null;
            }
        }
    }
}
