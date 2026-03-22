package android.support.b;

import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f194a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f196c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ComponentName f197d;

    e(g gVar, f fVar, ComponentName componentName) {
        this.f195b = gVar;
        this.f196c = fVar;
        this.f197d = componentName;
    }

    public boolean a(Uri uri, Bundle bundle, List<Bundle> list) {
        try {
            return this.f195b.a(this.f196c, uri, bundle, list);
        } catch (RemoteException e) {
            return false;
        }
    }

    IBinder a() {
        return this.f196c.asBinder();
    }

    ComponentName b() {
        return this.f197d;
    }
}
