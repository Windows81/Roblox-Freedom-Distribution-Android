package a.a.g.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map<String, Object> f434a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Object> f435b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f436c;

    public c(Context context, d dVar, Map<String, Object> map) {
        this.f436c = context;
        if (dVar != null) {
            a(dVar, map);
            a(dVar);
        }
        c();
        b();
        d();
    }

    public Map<String, Object> a() {
        return this.f435b;
    }

    private void b() {
        this.f434a.put("uname.version", Build.VERSION.RELEASE);
        this.f434a.put("culture", Locale.getDefault().getDisplayLanguage());
        this.f434a.put("build.type", "Release");
        this.f434a.put("device.model", Build.MODEL);
        this.f434a.put("device.brand", Build.BRAND);
        this.f434a.put("device.product", Build.PRODUCT);
        this.f434a.put("device.sdk", Integer.valueOf(Build.VERSION.SDK_INT));
        this.f434a.put("device.manufacturer", Build.MANUFACTURER);
        this.f434a.put("device.os_version", System.getProperty("os.version"));
    }

    private void c() {
        this.f434a.put("application.package", this.f436c.getApplicationContext().getPackageName());
        this.f434a.put("application", this.f436c.getApplicationInfo().loadLabel(this.f436c.getPackageManager()));
        try {
            this.f434a.put("version", this.f436c.getPackageManager().getPackageInfo(this.f436c.getPackageName(), 0).versionName);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
    }

    private void d() {
        Display defaultDisplay = ((WindowManager) this.f436c.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        this.f434a.put("screen.width", Integer.valueOf(displayMetrics.widthPixels));
        this.f434a.put("screen.height", Integer.valueOf(displayMetrics.heightPixels));
        this.f434a.put("screen.dpi", Integer.valueOf(displayMetrics.densityDpi));
        this.f434a.put("screen.orientation", e().toString());
        this.f434a.put("screen.brightness", Integer.valueOf(f()));
    }

    private void a(d dVar) {
        if (dVar == null) {
            return;
        }
        if (!dVar.f439c.booleanValue()) {
            this.f434a.put("error.message", dVar.f);
        } else {
            this.f434a.put("classifier", dVar.g.getClass().getName());
            this.f434a.put("error.message", dVar.g.getMessage());
        }
    }

    private a.a.c.f e() {
        int i = this.f436c.getResources().getConfiguration().orientation;
        if (i == 1) {
            return a.a.c.f.PORTRAIT;
        }
        if (i == 2) {
            return a.a.c.f.LANDSCAPE;
        }
        return a.a.c.f.UNDEFINED;
    }

    private int f() {
        return Settings.System.getInt(this.f436c.getContentResolver(), "screen_brightness", 0);
    }

    private void a(d dVar, Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : d.a(dVar, map).entrySet()) {
            Object value = entry.getValue();
            Class<?> cls = value.getClass();
            if (cls.isPrimitive() || (value instanceof String) || cls.isEnum()) {
                this.f434a.put(entry.getKey(), value);
            } else {
                this.f435b.put(entry.getKey(), value);
            }
        }
        if (dVar.f439c.booleanValue()) {
            this.f435b.put("Exception properties", dVar.g);
        }
    }
}
