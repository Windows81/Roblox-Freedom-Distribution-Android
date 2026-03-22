package a.a;

import a.a.e.d;
import android.content.Context;
import java.io.File;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c implements a.a.e.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Timer f360b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a.a.e.a f362d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f363e;
    private a.a.e.c f;
    private d g;
    private a.a.g.a.b h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final transient String f361c = c.class.getSimpleName();
    private boolean i = false;

    @Override // a.a.e.b
    public void a() {
        if (this.h == null) {
            return;
        }
        a.a.e.c cVar = this.f;
        if (cVar != null && !cVar.c()) {
            this.i = true;
            return;
        }
        f();
        e();
        if (this.h.d() == a.a.c.a.a.ByInterval || this.h.c()) {
            d();
        }
        this.i = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Timer timer = new Timer();
        f360b = timer;
        timer.scheduleAtFixedRate(new TimerTask() { // from class: a.a.c.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                String string = Calendar.getInstance().getTime().toString();
                a.a.f.a.a(c.this.f361c, "Timer - " + string);
                if (c.this.f == null || c.this.f.c()) {
                    a.a.f.a.a(c.this.f361c, "Timer - Database context is null or empty: " + string);
                    return;
                }
                if (c.f359a) {
                    a.a.f.a.a(c.this.f361c, "Timer - another timer works now: " + string);
                    return;
                }
                a.a.f.a.a(c.this.f361c, "Timer - continue working: " + string);
                boolean unused = c.f359a = true;
                c.f360b.cancel();
                c.f360b.purge();
                Timer unused2 = c.f360b = null;
                final a.a.g.a.a aVarA = c.this.f.a();
                while (true) {
                    if (aVarA == null) {
                        break;
                    }
                    final CountDownLatch countDownLatch = new CountDownLatch(1);
                    a.a.g.a aVarA2 = aVarA.a();
                    if (aVarA2 == null || aVarA2.m == null) {
                        a.a.f.a.a(c.this.f361c, "Timer - backtrace data or report is null - deleting record");
                        c.this.a(aVarA);
                    } else {
                        c.this.f362d.a(aVarA2, new a.a.d.c() { // from class: a.a.c.1.1
                            @Override // a.a.d.c
                            public void a(a.a.g.c cVar) {
                                if (cVar.f453b == a.a.g.c.a.Ok) {
                                    a.a.f.a.a(c.this.f361c, "Timer - deleting record");
                                    c.this.a(aVarA);
                                } else {
                                    a.a.f.a.a(c.this.f361c, "Timer - closing record");
                                    aVarA.d();
                                }
                                countDownLatch.countDown();
                            }
                        });
                        try {
                            countDownLatch.await();
                        } catch (Exception e2) {
                            a.a.f.a.a(c.this.f361c, "Error during waiting for result in Timer", e2);
                        }
                        if (aVarA.b() && !aVarA.f417b) {
                            a.a.f.a.a(c.this.f361c, "Timer - record is valid and unlocked");
                            break;
                        }
                    }
                    aVarA = c.this.f.a();
                }
                a.a.f.a.a(c.this.f361c, "Setup new timer");
                boolean unused3 = c.f359a = false;
                c.this.d();
            }
        }, this.h.e() * 1000, this.h.e() * 1000);
    }

    @Override // a.a.e.b
    public void a(a.a.e.a aVar) {
        this.f362d = aVar;
    }

    private void e() {
        this.g.a(this.f.b());
    }

    @Override // a.a.e.b
    public a.a.g.a.a a(a.a.g.b.d dVar, Map<String, Object> map) {
        if (!this.i || dVar == null || !g()) {
            return null;
        }
        return this.f.a(dVar.a(this.f363e, map));
    }

    @Override // a.a.e.b
    public void a(a.a.g.a.a aVar) {
        a.a.e.c cVar = this.f;
        if (cVar == null) {
            return;
        }
        cVar.b(aVar);
    }

    private void f() {
        Iterator<File> it = this.g.a().iterator();
        while (it.hasNext()) {
            a.a.g.a.a aVarA = a.a.g.a.a.a(it.next());
            if (!aVarA.b()) {
                aVarA.c();
            } else {
                this.f.a(aVarA);
                g();
                aVarA.d();
            }
        }
    }

    private boolean g() {
        if (this.f.d() + 1 > this.h.b() && this.h.b() != 0 && !this.f.f()) {
            a.a.f.a.c(this.f361c, "Can't remove last record. Database size is invalid");
            return false;
        }
        if (this.h.a() == 0 || this.f.e() <= this.h.a()) {
            return true;
        }
        int i = 5;
        while (this.f.e() > this.h.a()) {
            this.f.f();
            i--;
            if (i == 0) {
                break;
            }
        }
        return i != 0;
    }
}
