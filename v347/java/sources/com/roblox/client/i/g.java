package com.roblox.client.i;

import android.content.Context;
import android.util.Log;
import com.b.a.a.c.a;
import com.b.a.a.k;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f7193a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static k f7194b;

    public static void a(Context context, String str) {
        if (f7194b == null) {
            a.C0048a c0048aA = new a.C0048a(context).c(1).b(3).d(3).a(120);
            if (f7193a) {
                c0048aA.a(new a());
            }
            if (str != null) {
                c0048aA.a(str);
            }
            f7194b = new k(c0048aA.a());
        }
    }

    public static k a() {
        return f7194b;
    }

    private static class a implements com.b.a.a.f.a {
        private a() {
        }

        @Override // com.b.a.a.f.a
        public boolean a() {
            return g.f7193a;
        }

        @Override // com.b.a.a.f.a
        public void a(String str, Object... objArr) {
            Log.d("JobManager", String.format(str, objArr));
        }

        @Override // com.b.a.a.f.a
        public void a(Throwable th, String str, Object... objArr) {
            Log.e("JobManager", String.format(str, objArr), th);
        }

        @Override // com.b.a.a.f.a
        public void b(String str, Object... objArr) {
            Log.e("JobManager", String.format(str, objArr));
        }
    }
}
