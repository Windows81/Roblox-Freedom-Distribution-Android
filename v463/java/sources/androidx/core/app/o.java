package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class o implements Iterable<Intent> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<Intent> f1359a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f1360b;

    public interface a {
        Intent d();
    }

    private o(Context context) {
        this.f1360b = context;
    }

    public static o a(Context context) {
        return new o(context);
    }

    public o a(Intent intent) {
        this.f1359a.add(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public o a(Activity activity) {
        Intent intentD = activity instanceof a ? ((a) activity).d() : null;
        if (intentD == null) {
            intentD = g.a(activity);
        }
        if (intentD != null) {
            ComponentName component = intentD.getComponent();
            if (component == null) {
                component = intentD.resolveActivity(this.f1360b.getPackageManager());
            }
            a(component);
            a(intentD);
        }
        return this;
    }

    public o a(ComponentName componentName) {
        int size = this.f1359a.size();
        try {
            Intent intentA = g.a(this.f1360b, componentName);
            while (intentA != null) {
                this.f1359a.add(size, intentA);
                intentA = g.a(this.f1360b, intentA.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e2);
        }
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f1359a.iterator();
    }

    public void a() {
        a((Bundle) null);
    }

    public void a(Bundle bundle) {
        if (this.f1359a.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        ArrayList<Intent> arrayList = this.f1359a;
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (androidx.core.a.b.a(this.f1360b, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(268435456);
        this.f1360b.startActivity(intent);
    }
}
