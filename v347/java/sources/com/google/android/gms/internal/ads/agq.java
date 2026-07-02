package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class agq implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ agp f3971a;

    agq(agp agpVar) {
        this.f3971a = agpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f3971a.f3969b != null) {
            return;
        }
        synchronized (agp.f3968d) {
            if (this.f3971a.f3969b != null) {
                return;
            }
            boolean zBooleanValue = ((Boolean) aoo.f().a(aro.bC)).booleanValue();
            if (zBooleanValue) {
                try {
                    agp.f3967a = new amn(this.f3971a.f3970c.f4004a, "ADSHIELD", null);
                } catch (Throwable th) {
                    zBooleanValue = false;
                }
            }
            this.f3971a.f3969b = Boolean.valueOf(zBooleanValue);
            agp.f3968d.open();
        }
    }
}
