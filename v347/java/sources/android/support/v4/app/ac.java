package android.support.v4.app;

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
import android.support.v4.app.t;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ac {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f657b;
    private static c g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f659d;
    private final NotificationManager e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f656a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Set<String> f658c = new HashSet();
    private static final Object f = new Object();

    private interface d {
        void a(t tVar) throws RemoteException;
    }

    public static ac a(Context context) {
        return new ac(context);
    }

    private ac(Context context) {
        this.f659d = context;
        this.e = (NotificationManager) this.f659d.getSystemService("notification");
    }

    public void a(String str, int i, Notification notification) {
        if (a(notification)) {
            a(new a(this.f659d.getPackageName(), i, str, notification));
            this.e.cancel(str, i);
        } else {
            this.e.notify(str, i, notification);
        }
    }

    public boolean a() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.e.areNotificationsEnabled();
        }
        if (Build.VERSION.SDK_INT < 19) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.f659d.getSystemService("appops");
        ApplicationInfo applicationInfo = this.f659d.getApplicationInfo();
        String packageName = this.f659d.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            return ((Integer) cls.getMethod("checkOpNoThrow", Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), packageName)).intValue() == 0;
        } catch (ClassNotFoundException e) {
            return true;
        } catch (IllegalAccessException e2) {
            return true;
        } catch (NoSuchFieldException e3) {
            return true;
        } catch (NoSuchMethodException e4) {
            return true;
        } catch (RuntimeException e5) {
            return true;
        } catch (InvocationTargetException e6) {
            return true;
        }
    }

    public static Set<String> b(Context context) {
        Set<String> set;
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        synchronized (f656a) {
            if (string != null) {
                if (!string.equals(f657b)) {
                    String[] strArrSplit = string.split(":");
                    HashSet hashSet = new HashSet(strArrSplit.length);
                    for (String str : strArrSplit) {
                        ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                        if (componentNameUnflattenFromString != null) {
                            hashSet.add(componentNameUnflattenFromString.getPackageName());
                        }
                    }
                    f658c = hashSet;
                    f657b = string;
                }
                set = f658c;
            } else {
                set = f658c;
            }
        }
        return set;
    }

    private static boolean a(Notification notification) {
        Bundle bundleA = z.a(notification);
        return bundleA != null && bundleA.getBoolean("android.support.useSideChannel");
    }

    private void a(d dVar) {
        synchronized (f) {
            if (g == null) {
                g = new c(this.f659d.getApplicationContext());
            }
            g.a(dVar);
        }
    }

    private static class c implements ServiceConnection, Handler.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f666a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Handler f668c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Map<ComponentName, a> f669d = new HashMap();
        private Set<String> e = new HashSet();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final HandlerThread f667b = new HandlerThread("NotificationManagerCompat");

        public c(Context context) {
            this.f666a = context;
            this.f667b.start();
            this.f668c = new Handler(this.f667b.getLooper(), this);
        }

        public void a(d dVar) {
            this.f668c.obtainMessage(0, dVar).sendToTarget();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    b((d) message.obj);
                    break;
                case 1:
                    b bVar = (b) message.obj;
                    a(bVar.f664a, bVar.f665b);
                    break;
                case 2:
                    a((ComponentName) message.obj);
                    break;
                case 3:
                    b((ComponentName) message.obj);
                    break;
            }
            return true;
        }

        private void b(d dVar) {
            a();
            for (a aVar : this.f669d.values()) {
                aVar.f673d.add(dVar);
                d(aVar);
            }
        }

        private void a(ComponentName componentName, IBinder iBinder) {
            a aVar = this.f669d.get(componentName);
            if (aVar != null) {
                aVar.f672c = t.a.a(iBinder);
                aVar.e = 0;
                d(aVar);
            }
        }

        private void a(ComponentName componentName) {
            a aVar = this.f669d.get(componentName);
            if (aVar != null) {
                b(aVar);
            }
        }

        private void b(ComponentName componentName) {
            a aVar = this.f669d.get(componentName);
            if (aVar != null) {
                d(aVar);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.f668c.obtainMessage(1, new b(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.f668c.obtainMessage(2, componentName).sendToTarget();
        }

        private void a() {
            Set<String> setB = ac.b(this.f666a);
            if (!setB.equals(this.e)) {
                this.e = setB;
                List<ResolveInfo> listQueryIntentServices = this.f666a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
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
                    if (!this.f669d.containsKey(componentName2)) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Adding listener record for " + componentName2);
                        }
                        this.f669d.put(componentName2, new a(componentName2));
                    }
                }
                Iterator<Map.Entry<ComponentName, a>> it = this.f669d.entrySet().iterator();
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
        }

        private boolean a(a aVar) {
            if (aVar.f671b) {
                return true;
            }
            aVar.f671b = this.f666a.bindService(new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(aVar.f670a), this, 33);
            if (aVar.f671b) {
                aVar.e = 0;
            } else {
                Log.w("NotifManCompat", "Unable to bind to listener " + aVar.f670a);
                this.f666a.unbindService(this);
            }
            return aVar.f671b;
        }

        private void b(a aVar) {
            if (aVar.f671b) {
                this.f666a.unbindService(this);
                aVar.f671b = false;
            }
            aVar.f672c = null;
        }

        private void c(a aVar) {
            if (!this.f668c.hasMessages(3, aVar.f670a)) {
                aVar.e++;
                if (aVar.e > 6) {
                    Log.w("NotifManCompat", "Giving up on delivering " + aVar.f673d.size() + " tasks to " + aVar.f670a + " after " + aVar.e + " retries");
                    aVar.f673d.clear();
                    return;
                }
                int i = (1 << (aVar.e - 1)) * 1000;
                if (Log.isLoggable("NotifManCompat", 3)) {
                    Log.d("NotifManCompat", "Scheduling retry for " + i + " ms");
                }
                this.f668c.sendMessageDelayed(this.f668c.obtainMessage(3, aVar.f670a), i);
            }
        }

        private void d(a aVar) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + aVar.f670a + ", " + aVar.f673d.size() + " queued tasks");
            }
            if (!aVar.f673d.isEmpty()) {
                if (!a(aVar) || aVar.f672c == null) {
                    c(aVar);
                    return;
                }
                while (true) {
                    d dVarPeek = aVar.f673d.peek();
                    if (dVarPeek == null) {
                        break;
                    }
                    try {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Sending task " + dVarPeek);
                        }
                        dVarPeek.a(aVar.f672c);
                        aVar.f673d.remove();
                    } catch (DeadObjectException e) {
                        if (Log.isLoggable("NotifManCompat", 3)) {
                            Log.d("NotifManCompat", "Remote service has died: " + aVar.f670a);
                        }
                    } catch (RemoteException e2) {
                        Log.w("NotifManCompat", "RemoteException communicating with " + aVar.f670a, e2);
                    }
                }
                if (!aVar.f673d.isEmpty()) {
                    c(aVar);
                }
            }
        }

        private static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ComponentName f670a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public t f672c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f671b = false;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public LinkedList<d> f673d = new LinkedList<>();
            public int e = 0;

            public a(ComponentName componentName) {
                this.f670a = componentName;
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ComponentName f664a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final IBinder f665b;

        b(ComponentName componentName, IBinder iBinder) {
            this.f664a = componentName;
            this.f665b = iBinder;
        }
    }

    private static class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f660a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f661b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f662c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Notification f663d;

        a(String str, int i, String str2, Notification notification) {
            this.f660a = str;
            this.f661b = i;
            this.f662c = str2;
            this.f663d = notification;
        }

        @Override // android.support.v4.app.ac.d
        public void a(t tVar) throws RemoteException {
            tVar.a(this.f660a, this.f661b, this.f662c, this.f663d);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("NotifyTask[");
            sb.append("packageName:").append(this.f660a);
            sb.append(", id:").append(this.f661b);
            sb.append(", tag:").append(this.f662c);
            sb.append("]");
            return sb.toString();
        }
    }
}
