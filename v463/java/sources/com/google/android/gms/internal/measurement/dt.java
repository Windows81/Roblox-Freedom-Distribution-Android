package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class dt extends fy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final du f4221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f4222b;

    dt(fc fcVar) {
        super(fcVar);
        this.f4221a = new du(this, k(), "google_app_measurement_local.db");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0129 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0129 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x010c A[PHI: r7 r10
  0x010c: PHI (r7v4 int) = (r7v2 int), (r7v1 int) binds: [B:73:0x010a, B:80:0x0126] A[DONT_GENERATE, DONT_INLINE]
  0x010c: PHI (r10v6 android.database.sqlite.SQLiteDatabase) = (r10v3 android.database.sqlite.SQLiteDatabase), (r10v7 android.database.sqlite.SQLiteDatabase) binds: [B:73:0x010a, B:80:0x0126] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean a(int r18, byte[] r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 330
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.dt.a(int, byte[]):boolean");
    }

    private final SQLiteDatabase w() throws SQLiteException {
        if (this.f4222b) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f4221a.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f4222b = true;
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01a9 A[PHI: r8 r15
  0x01a9: PHI (r8v3 int) = (r8v1 int), (r8v1 int), (r8v4 int) binds: [B:114:0x0197, B:129:0x01c2, B:122:0x01a7] A[DONT_GENERATE, DONT_INLINE]
  0x01a9: PHI (r15v6 android.database.sqlite.SQLiteDatabase) = 
  (r15v4 android.database.sqlite.SQLiteDatabase)
  (r15v5 android.database.sqlite.SQLiteDatabase)
  (r15v7 android.database.sqlite.SQLiteDatabase)
 binds: [B:114:0x0197, B:129:0x01c2, B:122:0x01a7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x017c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x01c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x01c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x01c5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> a(int r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 486
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.dt.a(int):java.util.List");
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    public final boolean a(zzed zzedVar) {
        n();
        byte[] bArrA = iq.a((Parcelable) zzedVar);
        if (bArrA.length <= 131072) {
            return a(2, bArrA);
        }
        q().y().a("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    public final boolean a(zzeu zzeuVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzeuVar.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return a(0, bArrMarshall);
        }
        q().y().a("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public final boolean a(zzjx zzjxVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzjxVar.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return a(1, bArrMarshall);
        }
        q().y().a("User property too long for local database. Sending directly to service");
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cp d() {
        return super.d();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gb e() {
        return super.e();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ds f() {
        return super.f();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dh g() {
        return super.g();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gz h() {
        return super.h();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ gw i() {
        return super.i();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ com.google.android.gms.common.util.d j() {
        return super.j();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ Context k() {
        return super.k();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dt l() {
        return super.l();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ dv m() {
        return super.m();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ iq n() {
        return super.n();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ hy o() {
        return super.o();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ ex p() {
        return super.p();
    }

    @Override // com.google.android.gms.internal.measurement.fx, com.google.android.gms.internal.measurement.cw
    public final /* bridge */ /* synthetic */ dx q() {
        return super.q();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ ei r() {
        return super.r();
    }

    @Override // com.google.android.gms.internal.measurement.fx
    public final /* bridge */ /* synthetic */ cy s() {
        return super.s();
    }

    @Override // com.google.android.gms.internal.measurement.fy
    protected final boolean t() {
        return false;
    }

    public final void v() {
        c();
        try {
            int iDelete = w().delete("messages", null, null) + 0;
            if (iDelete > 0) {
                q().C().a("Reset local analytics data. records", Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e2) {
            q().v().a("Error resetting local analytics data. error", e2);
        }
    }
}
