package android.support.v4.app;

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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class u extends Service {
    static final Object h = new Object();
    static final HashMap<ComponentName, h> i = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    h f798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    a f799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f800d = false;
    boolean e = false;
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

    static abstract class h {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ComponentName f814c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f815d;
        int e;

        abstract void a(Intent intent);

        h(Context context, ComponentName componentName) {
            this.f814c = componentName;
        }

        void a(int i) {
            if (!this.f815d) {
                this.f815d = true;
                this.e = i;
            } else if (this.e != i) {
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.e);
            }
        }

        public void a() {
        }

        public void b() {
        }

        public void c() {
        }
    }

    static final class c extends h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f802a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f803b;
        private final Context f;
        private final PowerManager.WakeLock g;
        private final PowerManager.WakeLock h;

        c(Context context, ComponentName componentName) {
            super(context, componentName);
            this.f = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            this.g = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.g.setReferenceCounted(false);
            this.h = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.h.setReferenceCounted(false);
        }

        @Override // android.support.v4.app.u.h
        void a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f814c);
            if (this.f.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.f802a) {
                        this.f802a = true;
                        if (!this.f803b) {
                            this.g.acquire(60000L);
                        }
                    }
                }
            }
        }

        @Override // android.support.v4.app.u.h
        public void a() {
            synchronized (this) {
                this.f802a = false;
            }
        }

        @Override // android.support.v4.app.u.h
        public void b() {
            synchronized (this) {
                if (!this.f803b) {
                    this.f803b = true;
                    this.h.acquire(600000L);
                    this.g.release();
                }
            }
        }

        @Override // android.support.v4.app.u.h
        public void c() {
            synchronized (this) {
                if (this.f803b) {
                    if (this.f802a) {
                        this.g.acquire(60000L);
                    }
                    this.f803b = false;
                    this.h.release();
                }
            }
        }
    }

    static final class f extends JobServiceEngine implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final u f807a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Object f808b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        JobParameters f809c;

        final class a implements e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final JobWorkItem f810a;

            a(JobWorkItem jobWorkItem) {
                this.f810a = jobWorkItem;
            }

            @Override // android.support.v4.app.u.e
            public Intent a() {
                return this.f810a.getIntent();
            }

            @Override // android.support.v4.app.u.e
            public void b() {
                synchronized (f.this.f808b) {
                    if (f.this.f809c != null) {
                        f.this.f809c.completeWork(this.f810a);
                    }
                }
            }
        }

        f(u uVar) {
            super(uVar);
            this.f808b = new Object();
            this.f807a = uVar;
        }

        @Override // android.support.v4.app.u.b
        public IBinder a() {
            return getBinder();
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.f809c = jobParameters;
            this.f807a.a(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean zB = this.f807a.b();
            synchronized (this.f808b) {
                this.f809c = null;
            }
            return zB;
        }

        @Override // android.support.v4.app.u.b
        public e b() {
            synchronized (this.f808b) {
                if (this.f809c == null) {
                    return null;
                }
                JobWorkItem jobWorkItemDequeueWork = this.f809c.dequeueWork();
                if (jobWorkItemDequeueWork == null) {
                    return null;
                }
                jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.f807a.getClassLoader());
                return new a(jobWorkItemDequeueWork);
            }
        }
    }

    static final class g extends h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final JobInfo f812a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final JobScheduler f813b;

        g(Context context, ComponentName componentName, int i) {
            super(context, componentName);
            a(i);
            this.f812a = new JobInfo.Builder(i, this.f814c).setOverrideDeadline(0L).build();
            this.f813b = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // android.support.v4.app.u.h
        void a(Intent intent) {
            this.f813b.enqueue(this.f812a, new JobWorkItem(intent));
        }
    }

    final class d implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f804a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f805b;

        d(Intent intent, int i) {
            this.f804a = intent;
            this.f805b = i;
        }

        @Override // android.support.v4.app.u.e
        public Intent a() {
            return this.f804a;
        }

        @Override // android.support.v4.app.u.e
        public void b() {
            u.this.stopSelf(this.f805b);
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
                e eVarD = u.this.d();
                if (eVarD != null) {
                    u.this.a(eVarD.a());
                    eVarD.b();
                } else {
                    return null;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onCancelled(Void r2) {
            u.this.c();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r2) {
            u.this.c();
        }
    }

    public u() {
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
            this.f797a = new f(this);
            this.f798b = null;
        } else {
            this.f797a = null;
            this.f798b = a((Context) this, new ComponentName(this, getClass()), false, 0);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i3) {
        if (this.g != null) {
            this.f798b.a();
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
        return 2;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (this.f797a != null) {
            return this.f797a.a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (this.g != null) {
            synchronized (this.g) {
                this.f = true;
                this.f798b.c();
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
        h cVar = i.get(componentName);
        if (cVar == null) {
            if (Build.VERSION.SDK_INT >= 26) {
                if (!z) {
                    throw new IllegalArgumentException("Can't be here without a job id");
                }
                cVar = new g(context, componentName, i2);
            } else {
                cVar = new c(context, componentName);
            }
            i.put(componentName, cVar);
        }
        return cVar;
    }

    public boolean a() {
        return true;
    }

    boolean b() {
        if (this.f799c != null) {
            this.f799c.cancel(this.f800d);
        }
        this.e = true;
        return a();
    }

    void a(boolean z) {
        if (this.f799c == null) {
            this.f799c = new a();
            if (this.f798b != null && z) {
                this.f798b.b();
            }
            this.f799c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    void c() {
        if (this.g != null) {
            synchronized (this.g) {
                this.f799c = null;
                if (this.g != null && this.g.size() > 0) {
                    a(false);
                } else if (!this.f) {
                    this.f798b.c();
                }
            }
        }
    }

    e d() {
        d dVarRemove;
        if (this.f797a != null) {
            return this.f797a.b();
        }
        synchronized (this.g) {
            if (this.g.size() > 0) {
                dVarRemove = this.g.remove(0);
            } else {
                dVarRemove = null;
            }
        }
        return dVarRemove;
    }
}
