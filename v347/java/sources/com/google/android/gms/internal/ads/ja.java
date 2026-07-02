package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ja {
    public static void a(Context context) {
        if (mc.a(context) && !mc.b()) {
            nd ndVar = (nd) new jc(context).c();
            jd.d("Updating ad debug logging enablement.");
            mq.a(ndVar, "AdDebugLogUpdater.updateEnablement");
        }
    }
}
