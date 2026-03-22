package com.appsflyer.internal.referrer;

import android.content.Context;
import com.appsflyer.internal.ContentFetcher;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class HuaweiReferrer extends ContentFetcher<Map<String, Object>> {
    public Map<String, Object> map;

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private Runnable f293;

    public HuaweiReferrer(Runnable runnable, Context context) {
        super(context, "com.huawei.appmarket.commondata", "ffe391e0ea186d0734ed601e4e70e3224b7309d48e2075bac46d8c667eae7212", 0L);
        this.f293 = runnable;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00ed A[PHI: r3
  0x00ed: PHI (r3v8 android.database.Cursor) = (r3v7 android.database.Cursor), (r3v9 android.database.Cursor) binds: [B:18:0x00eb, B:12:0x00df] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.appsflyer.internal.ContentFetcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.Map<java.lang.String, java.lang.Object> query() {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.referrer.HuaweiReferrer.query():java.util.Map");
    }
}
