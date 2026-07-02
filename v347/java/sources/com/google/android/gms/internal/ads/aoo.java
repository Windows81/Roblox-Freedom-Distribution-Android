package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class aoo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f4347a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static aoo f4348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ly f4349c = new ly();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final aoh f4350d = new aoh(new anz(), new any(), new aqp(), new awb(), new gl(), new q(), new awc());
    private final String e = ly.c();
    private final ark f = new ark();
    private final arl g = new arl();
    private final arm h = new arm();

    static {
        aoo aooVar = new aoo();
        synchronized (f4347a) {
            f4348b = aooVar;
        }
    }

    protected aoo() {
    }

    public static ly a() {
        return g().f4349c;
    }

    public static aoh b() {
        return g().f4350d;
    }

    public static String c() {
        return g().e;
    }

    public static arl d() {
        return g().g;
    }

    public static ark e() {
        return g().f;
    }

    public static arm f() {
        return g().h;
    }

    private static aoo g() {
        aoo aooVar;
        synchronized (f4347a) {
            aooVar = f4348b;
        }
        return aooVar;
    }
}
