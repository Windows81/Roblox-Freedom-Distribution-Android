package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aj implements Iterable<Intent> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c f688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<Intent> f689b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f690c;

    public interface a {
        Intent a();
    }

    static class c {
        c() {
        }
    }

    static class b extends c {
        b() {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            f688a = new b();
        } else {
            f688a = new c();
        }
    }

    private aj(Context context) {
        this.f690c = context;
    }

    public static aj a(Context context) {
        return new aj(context);
    }

    public aj a(Intent intent) {
        this.f689b.add(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public aj a(Activity activity) {
        Intent intentA = null;
        if (activity instanceof a) {
            intentA = ((a) activity).a();
        }
        Intent intentA2 = intentA == null ? x.a(activity) : intentA;
        if (intentA2 != null) {
            ComponentName component = intentA2.getComponent();
            if (component == null) {
                component = intentA2.resolveActivity(this.f690c.getPackageManager());
            }
            a(component);
            a(intentA2);
        }
        return this;
    }

    public aj a(ComponentName componentName) {
        int size = this.f689b.size();
        try {
            Intent intentA = x.a(this.f690c, componentName);
            while (intentA != null) {
                this.f689b.add(size, intentA);
                intentA = x.a(this.f690c, intentA.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f689b.iterator();
    }

    public void a() {
        a((Bundle) null);
    }

    public void a(Bundle bundle) {
        if (this.f689b.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) this.f689b.toArray(new Intent[this.f689b.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (!android.support.v4.a.c.a(this.f690c, intentArr, bundle)) {
            Intent intent = new Intent(intentArr[intentArr.length - 1]);
            intent.addFlags(268435456);
            this.f690c.startActivity(intent);
        }
    }
}
