package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.legacy.a.a;
import com.google.android.gms.internal.measurement.es;
import com.google.android.gms.internal.measurement.ev;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class AppMeasurementReceiver extends a implements ev {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private es f4741a;

    @Override // com.google.android.gms.internal.measurement.ev
    public final BroadcastReceiver.PendingResult a() {
        return goAsync();
    }

    @Override // com.google.android.gms.internal.measurement.ev
    public final void a(Context context, Intent intent) {
        a_(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.f4741a == null) {
            this.f4741a = new es(this);
        }
        this.f4741a.a(context, intent);
    }
}
