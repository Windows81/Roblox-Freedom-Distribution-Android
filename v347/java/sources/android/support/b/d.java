package android.support.b;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.b.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class d implements ServiceConnection {
    public abstract void a(ComponentName componentName, b bVar);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        a(componentName, new b(g.a.a(iBinder), componentName) { // from class: android.support.b.d.1
        });
    }
}
