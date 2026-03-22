package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class f extends Service {
    static final Object h = new Object();
    static final HashMap<ComponentName, h> i = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f1278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    h f1279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    a f1280c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f1281d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f1282e = false;
    boolean f = false;
    final ArrayList<d> g;

    interface b {
        IBinder a();

        e b();
    }

    interface e {
        Intent a();

        void b();
    }

    protected abstract void a(Intent intent);

    public boolean a() {
        return true;
    }

    static abstract class h {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ComponentName f1296c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1297d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1298e;

        public void a() {
        }

        abstract void a(Intent intent);

        public void b() {
        }

        public void c() {
        }

        h(Context context, ComponentName componentName) {
            this.f1296c = componentName;
        }

        void a(int i) {
            if (!this.f1297d) {
                this.f1297d = true;
                this.f1298e = i;
            } else {
                if (this.f1298e == i) {
                    return;
                }
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.f1298e);
            }
        }
    }

    static final class c extends h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f1284a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f1285b;
        private final Context f;
        private final PowerManager.WakeLock g;
        private final PowerManager.WakeLock h;

        c(Context context, ComponentName componentName) {
            super(context, componentName);
            this.f = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.g = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock wakeLockNewWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.h = wakeLockNewWakeLock2;
            wakeLockNewWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.f.h
        void a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f1296c);
            if (this.f.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.f1284a) {
                        this.f1284a = true;
                        if (!this.f1285b) {
                            this.g.acquire(60000L);
                        }
                    }
                }
            }
        }

        @Override // androidx.core.app.f.h
        public void a() {
            synchronized (this) {
                this.f1284a = false;
            }
        }

        @Override // androidx.core.app.f.h
        public void b() {
            synchronized (this) {
                if (!this.f1285b) {
                    this.f1285b = true;
                    this.h.acquire(600000L);
                    this.g.release();
                }
            }
        }

        @Override // androidx.core.app.f.h
        public void c() {
            synchronized (this) {
                if (this.f1285b) {
                    if (this.f1284a) {
                        this.g.acquire(60000L);
                    }
                    this.f1285b = false;
                    this.h.release();
                }
            }
        }
    }

    /* JADX INFO: renamed from: androidx.core.app.f$f, reason: collision with other inner class name */
    static final class JobServiceEngineC0026f extends JobServiceEngine implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final f f1289a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Object f1290b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        JobParameters f1291c;

        /* JADX INFO: renamed from: androidx.core.app.f$f$a */
        final class a implements e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final JobWorkItem f1292a;

            a(JobWorkItem jobWorkItem) {
                this.f1292a = jobWorkItem;
            }

            @Override // androidx.core.app.f.e
            public Intent a() {
                return this.f1292a.getIntent();
            }

            @Override // androidx.core.app.f.e
            public void b() {
                synchronized (JobServiceEngineC0026f.this.f1290b) {
                    if (JobServiceEngineC0026f.this.f1291c != null) {
                        JobServiceEngineC0026f.this.f1291c.completeWork(this.f1292a);
                    }
                }
            }
        }

        JobServiceEngineC0026f(f fVar) {
            super(fVar);
            this.f1290b = new Object();
            this.f1289a = fVar;
        }

        @Override // androidx.core.app.f.b
        public IBinder a() {
            return getBinder();
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.f1291c = jobParameters;
            this.f1289a.a(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean zB = this.f1289a.b();
            synchronized (this.f1290b) {
                this.f1291c = null;
            }
            return zB;
        }

        @Override // androidx.core.app.f.b
        public e b() {
            synchronized (this.f1290b) {
                if (this.f1291c == null) {
                    return null;
                }
                JobWorkItem jobWorkItemDequeueWork = this.f1291c.dequeueWork();
                if (jobWorkItemDequeueWork == null) {
                    return null;
                }
                jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.f1289a.getClassLoader());
                return new a(jobWorkItemDequeueWork);
            }
        }
    }

    static final class g extends h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final JobInfo f1294a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final JobScheduler f1295b;

        g(Context context, ComponentName componentName, int i) {
            super(context, componentName);
            a(i);
            this.f1294a = new JobInfo.Builder(i, this.f1296c).setOverrideDeadline(0L).build();
            this.f1295b = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // androidx.core.app.f.h
        void a(Intent intent) {
            this.f1295b.enqueue(this.f1294a, new JobWorkItem(intent));
        }
    }

    final class d implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f1286a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f1287b;

        d(Intent intent, int i) {
            this.f1286a = intent;
            this.f1287b = i;
        }

        @Override // androidx.core.app.f.e
        public Intent a() {
            return this.f1286a;
        }

        @Override // androidx.core.app.f.e
        public void b() {
            f.this.stopSelf(this.f1287b);
        }
    }

    final class a extends AsyncTask<Void, Void, Void> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                e eVarD = f.this.d();
                if (eVarD == null) {
                    return null;
                }
                f.this.a(eVarD.a());
                eVarD.b();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onCancelled(Void r1) {
            f.this.c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r1) {
            f.this.c();
        }
    }

    public f() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.g = null;
        } else {
            this.g = new ArrayList<>();
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1278a = new JobServiceEngineC0026f(this);
            this.f1279b = null;
        } else {
            this.f1278a = null;
            this.f1279b = a((Context) this, new ComponentName(this, getClass()), false, 0);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        if (this.g == null) {
            return 2;
        }
        this.f1279b.a();
        synchronized (this.g) {
            ArrayList<d> arrayList = this.g;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i3));
            a(true);
        }
        return 3;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        b bVar = this.f1278a;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<d> arrayList = this.g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f = true;
                this.f1279b.c();
            }
        }
    }

    public static void a(Context context, Class cls, int i2, Intent intent) {
        a(context, new ComponentName(context, (Class<?>) cls), i2, intent);
    }

    public static void a(Context context, ComponentName componentName, int i2, Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("work must not be null");
        }
        synchronized (h) {
            h hVarA = a(context, componentName, true, i2);
            hVarA.a(i2);
            hVarA.a(intent);
        }
    }

    static h a(Context context, ComponentName componentName, boolean z, int i2) {
        h cVar;
        h hVar = i.get(componentName);
        if (hVar != null) {
            return hVar;
        }
        if (Build.VERSION.SDK_INT < 26) {
            cVar = new c(context, componentName);
        } else {
            if (!z) {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            cVar = new g(context, componentName, i2);
        }
        h hVar2 = cVar;
        i.put(componentName, hVar2);
        return hVar2;
    }

    boolean b() {
        a aVar = this.f1280c;
        if (aVar != null) {
            aVar.cancel(this.f1281d);
        }
        this.f1282e = true;
        return a();
    }

    void a(boolean z) {
        if (this.f1280c == null) {
            this.f1280c = new a();
            h hVar = this.f1279b;
            if (hVar != null && z) {
                hVar.b();
            }
            this.f1280c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    void c() {
        ArrayList<d> arrayList = this.g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f1280c = null;
                if (this.g != null && this.g.size() > 0) {
                    a(false);
                } else if (!this.f) {
                    this.f1279b.c();
                }
            }
        }
    }

    e d() {
        b bVar = this.f1278a;
        if (bVar != null) {
            return bVar.b();
        }
        synchronized (this.g) {
            if (this.g.size() <= 0) {
                return null;
            }
            return this.g.remove(0);
        }
    }
}
