package com.c.a;

import android.net.NetworkInfo;
import com.c.a.ae;
import com.c.a.t;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class v extends ThreadPoolExecutor {
    v() {
        super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ae.e());
    }

    void a(NetworkInfo networkInfo) {
        if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
            a(3);
            return;
        }
        int type = networkInfo.getType();
        if (type != 0) {
            if (type == 1 || type == 6 || type == 9) {
                a(4);
                return;
            } else {
                a(3);
                return;
            }
        }
        int subtype = networkInfo.getSubtype();
        switch (subtype) {
            case 1:
            case 2:
                a(1);
                return;
            case 3:
            case 4:
            case 5:
            case 6:
                break;
            default:
                switch (subtype) {
                    case 12:
                        break;
                    case 13:
                    case 14:
                    case 15:
                        a(3);
                        break;
                    default:
                        a(3);
                        break;
                }
                return;
        }
        a(2);
    }

    private void a(int i) {
        setCorePoolSize(i);
        setMaximumPoolSize(i);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        a aVar = new a((c) runnable);
        execute(aVar);
        return aVar;
    }

    private static final class a extends FutureTask<c> implements Comparable<a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f3203a;

        public a(c cVar) {
            super(cVar, null);
            this.f3203a = cVar;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            t.e eVarN = this.f3203a.n();
            t.e eVarN2 = aVar.f3203a.n();
            return eVarN == eVarN2 ? this.f3203a.f3115a - aVar.f3203a.f3115a : eVarN2.ordinal() - eVarN.ordinal();
        }
    }
}
