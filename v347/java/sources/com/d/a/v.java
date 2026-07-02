package com.d.a;

import android.net.NetworkInfo;
import com.d.a.ae;
import com.d.a.t;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class v extends ThreadPoolExecutor {
    v() {
        super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ae.e());
    }

    void a(NetworkInfo networkInfo) {
        if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
            a(3);
        }
        switch (networkInfo.getType()) {
            case 0:
                switch (networkInfo.getSubtype()) {
                    case 1:
                    case 2:
                        a(1);
                        break;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 12:
                        a(2);
                        break;
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    default:
                        a(3);
                        break;
                    case 13:
                    case 14:
                    case 15:
                        a(3);
                        break;
                }
                break;
            case 1:
            case 6:
            case 9:
                a(4);
                break;
            default:
                a(3);
                break;
        }
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
        private final c f2540a;

        public a(c cVar) {
            super(cVar, null);
            this.f2540a = cVar;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            t.e eVarN = this.f2540a.n();
            t.e eVarN2 = aVar.f2540a.n();
            return eVarN == eVarN2 ? this.f2540a.f2462a - aVar.f2540a.f2462a : eVarN2.ordinal() - eVarN.ordinal();
        }
    }
}
