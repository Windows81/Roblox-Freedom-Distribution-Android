package androidx.core.app;

import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.v4.a.a;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f1329b;
    private static c g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f1331d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final NotificationManager f1332e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f1328a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Set<String> f1330c = new HashSet();
    private static final Object f = new Object();

    private interface d {
        void a(android.support.v4.a.a aVar) throws RemoteException;
    }

    public static l a(Context context) {
        return new l(context);
    }

    private l(Context context) {
        this.f1331d = context;
        this.f1332e = (NotificationManager) context.getSystemService("notification");
    }

    public void a(String str, int i, Notification notification) {
        if (a(notification)) {
            a(new a(this.f1331d.getPackageName(), i, str, notification));
            this.f1332e.cancel(str, i);
        } else {
            this.f1332e.notify(str, i, notification);
        }
    }

    public boolean a() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f1332e.areNotificationsEnabled();
        }
        if (Build.VERSION.SDK_INT < 19) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.f1331d.getSystemService("appops");
        ApplicationInfo applicationInfo = this.f1331d.getApplicationInfo();
        String packageName = this.f1331d.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            return ((Integer) cls.getMethod("checkOpNoThrow", Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), packageName)).intValue() == 0;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return true;
        }
    }

    public static Set<String> b(Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f1328a) {
            if (string != null) {
                if (!string.equals(f1329b)) {
                    String[] strArrSplit = string.split(":", -1);
                    HashSet hashSet = new HashSet(strArrSplit.length);
                    for (String str : strArrSplit) {
                        ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                        if (componentNameUnflattenFromString != null) {
                            hashSet.add(componentNameUnflattenFromString.getPackageName());
                        }
                    }
                    f1330c = hashSet;
                    f1329b = string;
                }
                set = f1330c;
            } else {
                set = f1330c;
            }
        }
        return set;
    }

    private static boolean a(Notification notification) {
        Bundle bundleA = i.a(notification);
        return bundleA != null && bundleA.getBoolean("android.support.useSideChannel");
    }

    private void a(d dVar) {
        synchronized (f) {
            if (g == null) {
                g = new c(this.f1331d.getApplicationContext());
            }
            g.a(dVar);
        }
    }

    private static class c implements ServiceConnection, Handler.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f1339a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final HandlerThread f1340b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Handler f1341c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Map<ComponentName, a> f1342d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Set<String> f1343e = new HashSet();

        c(Context context) {
            this.f1339a = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            this.f1340b = handlerThread;
            handlerThread.start();
            this.f1341c = new Handler(this.f1340b.getLooper(), this);
        }

        public void a(d dVar) {
            this.f1341c.obtainMessage(0, dVar).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                b((d) message.obj);
                return true;
            }
            if (i == 1) {
                b bVar = (b) message.obj;
                a(bVar.f1337a, bVar.f1338b);
                return true;
            }
            if (i == 2) {
                a((ComponentName) message.obj);
                return true;
            }
            if (i != 3) {
                return false;
            }
            b((ComponentName) message.obj);
            return true;
        }

        private void b(d dVar) {
            a();
            for (a aVar : this.f1342d.values()) {
                aVar.f1347d.add(dVar);
                d(aVar);
            }
        }

        private void a(ComponentName componentName, IBinder iBinder) {
            a aVar = this.f1342d.get(componentName);
            if (aVar != null) {
                aVar.f1346c = a.AbstractBinderC0001a.a(iBinder);
                aVar.f1348e = 0;
                d(aVar);
            }
        }

        private void a(ComponentName componentName) {
            a aVar = this.f1342d.get(componentName);
            if (aVar != null) {
                b(aVar);
            }
        }

        private void b(ComponentName componentName) {
            a aVar = this.f1342d.get(componentName);
            if (aVar != null) {
                d(aVar);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.f1341c.obtainMessage(1, new b(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.f1341c.obtainMessage(2, componentName).sendToTarget();
        }

        private void a() {
            Set<String> setB = l.b(this.f1339a);
            if (setB.equals(this.f1343e)) {
                return;
            }
            this.f1343e = setB;
            List<ResolveInfo> listQueryIntentServices = this.f1339a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
            HashSet<ComponentName> hashSet = new HashSet();
            for (ResolveInfo resolveInfo : listQueryIntentServices) {
                if (setB.contains(resolveInfo.serviceInfo.packageName)) {
                    ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
                    if (resolveInfo.serviceInfo.permission != null) {
                        Log.w("NotifManCompat", "Permission present on component " + componentName + ", not adding listener record.");
                    } else {
                        hashSet.add(componentName);
                    }
                }
            }
            for (ComponentName componentName2 : hashSet) {
                if (!this.f1342d.containsKey(componentName2)) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                    }
                    this.f1342d.put(componentName2, new a(componentName2));
                }
            }
            Iterator<Map.Entry<ComponentName, a>> it = this.f1342d.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<ComponentName, a> next = it.next();
                if (!hashSet.contains(next.getKey())) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Removing listener record for " + next.getKey());
                    }
                    b(next.getValue());
                    it.remove();
                }
            }
        }

        private boolean a(a aVar) {
            if (aVar.f1345b) {
                return true;
            }
            aVar.f1345b = this.f1339a.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(aVar.f1344a), this, 33);
            if (aVar.f1345b) {
                aVar.f1348e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + aVar.f1344a);
                this.f1339a.unbindService(this);
            }
            return aVar.f1345b;
        }

        private void b(a aVar) {
            if (aVar.f1345b) {
                this.f1339a.unbindService(this);
                aVar.f1345b = false;
            }
            aVar.f1346c = null;
        }

        private void c(a aVar) {
            if (this.f1341c.hasMessages(3, aVar.f1344a)) {
                return;
            }
            aVar.f1348e++;
            if (aVar.f1348e > 6) {
                Log.w("NotifManCompat", "Giving up on delivering " + aVar.f1347d.size() + " tasks to " + aVar.f1344a + " after " + aVar.f1348e + " retries");
                aVar.f1347d.clear();
                return;
            }
            int i = (1 << (aVar.f1348e - 1)) * 1000;
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Scheduling retry for " + i + " ms");
            }
            this.f1341c.sendMessageDelayed(this.f1341c.obtainMessage(3, aVar.f1344a), i);
        }

        private void d(a aVar) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + aVar.f1344a + ", " + aVar.f1347d.size() + " queued tasks");
            }
            if (aVar.f1347d.isEmpty()) {
                return;
            }
            if (!a(aVar) || aVar.f1346c == null) {
                c(aVar);
                return;
            }
            while (true) {
                d dVarPeek = aVar.f1347d.peek();
                if (dVarPeek == null) {
                    break;
                }
                try {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Sending task " + dVarPeek);
                    }
                    dVarPeek.a(aVar.f1346c);
                    aVar.f1347d.remove();
                } catch (DeadObjectException unused) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Log.d("NotifManCompat", "Remote service has died: " + aVar.f1344a);
                    }
                } catch (RemoteException e2) {
                    Log.w("NotifManCompat", "RemoteException communicating with " + aVar.f1344a, e2);
                }
            }
            if (aVar.f1347d.isEmpty()) {
                return;
            }
            c(aVar);
        }

        private static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final ComponentName f1344a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            android.support.v4.a.a f1346c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            boolean f1345b = false;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            ArrayDeque<d> f1347d = new ArrayDeque<>();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            int f1348e = 0;

            a(ComponentName componentName) {
                this.f1344a = componentName;
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ComponentName f1337a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final IBinder f1338b;

        b(ComponentName componentName, IBinder iBinder) {
            this.f1337a = componentName;
            this.f1338b = iBinder;
        }
    }

    private static class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f1333a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f1334b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f1335c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Notification f1336d;

        a(String str, int i, String str2, Notification notification) {
            this.f1333a = str;
            this.f1334b = i;
            this.f1335c = str2;
            this.f1336d = notification;
        }

        @Override // androidx.core.app.l.d
        public void a(android.support.v4.a.a aVar) throws RemoteException {
            aVar.a(this.f1333a, this.f1334b, this.f1335c, this.f1336d);
        }

        public String toString() {
            return "NotifyTask[packageName:" + this.f1333a + ", id:" + this.f1334b + ", tag:" + this.f1335c + "]";
        }
    }
}
