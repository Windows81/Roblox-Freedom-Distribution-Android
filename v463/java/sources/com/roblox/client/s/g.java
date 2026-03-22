package com.roblox.client.s;

import android.content.Context;
import android.util.Log;
import com.birbit.android.jobqueue.b.a;
import com.birbit.android.jobqueue.i;
import com.birbit.android.jobqueue.log.CustomLogger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f7032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static i f7033b;

    public static void a(Context context, String str) {
        if (f7033b == null) {
            a.C0071a c0071aA = new a.C0071a(context).c(1).b(3).d(3).a(120);
            if (f7032a) {
                c0071aA.a(new a());
            }
            if (str != null) {
                c0071aA.a(str);
            }
            f7033b = new i(c0071aA.a());
        }
    }

    public static i a() {
        return f7033b;
    }

    private static class a implements CustomLogger {
        private a() {
        }

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        public boolean isDebugEnabled() {
            return g.f7032a;
        }

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        public void d(String str, Object... objArr) {
            Log.d("JobManager", String.format(str, objArr));
        }

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        public void e(Throwable th, String str, Object... objArr) {
            Log.e("JobManager", String.format(str, objArr), th);
        }

        @Override // com.birbit.android.jobqueue.log.CustomLogger
        public void e(String str, Object... objArr) {
            Log.e("JobManager", String.format(str, objArr));
        }
    }
}
