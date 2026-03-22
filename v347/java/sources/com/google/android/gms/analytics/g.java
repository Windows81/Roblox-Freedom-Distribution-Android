package com.google.android.gms.analytics;

import android.content.Context;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class g implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TreeSet<String> f3247a = new TreeSet<>();

    public g(Context context, Collection<String> collection) {
        a(context, collection);
    }

    @Override // com.google.android.gms.analytics.b
    public String a(String str, Throwable th) {
        return a(a(th), b(a(th)), str);
    }

    protected String a(Throwable th, StackTraceElement stackTraceElement, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(th.getClass().getSimpleName());
        if (stackTraceElement != null) {
            String[] strArrSplit = stackTraceElement.getClassName().split("\\.");
            String str2 = "unknown";
            if (strArrSplit != null && strArrSplit.length > 0) {
                str2 = strArrSplit[strArrSplit.length - 1];
            }
            sb.append(String.format(" (@%s:%s:%s)", str2, stackTraceElement.getMethodName(), Integer.valueOf(stackTraceElement.getLineNumber())));
        }
        if (str != null) {
            sb.append(String.format(" {%s}", str));
        }
        return sb.toString();
    }

    protected Throwable a(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    public void a(Context context, Collection<String> collection) {
        boolean z;
        this.f3247a.clear();
        HashSet<String> hashSet = new HashSet();
        if (collection != null) {
            hashSet.addAll(collection);
        }
        if (context != null) {
            hashSet.add(context.getApplicationContext().getPackageName());
        }
        for (String str : hashSet) {
            boolean z2 = true;
            Iterator<String> it = this.f3247a.iterator();
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                if (str.startsWith(next)) {
                    z2 = false;
                } else if (next.startsWith(str)) {
                    this.f3247a.remove(next);
                }
            }
            if (z) {
                this.f3247a.add(str);
            }
        }
    }

    protected StackTraceElement b(Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace == null || stackTrace.length == 0) {
            return null;
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            Iterator<String> it = this.f3247a.iterator();
            while (it.hasNext()) {
                if (className.startsWith(it.next())) {
                    return stackTraceElement;
                }
            }
        }
        return stackTrace[0];
    }
}
