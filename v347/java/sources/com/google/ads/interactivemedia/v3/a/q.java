package com.google.ads.interactivemedia.v3.a;

import java.math.BigInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class q extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?>[] f2761a = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f2762b;

    public q(Boolean bool) {
        a(bool);
    }

    public q(Number number) {
        a(number);
    }

    public q(String str) {
        a(str);
    }

    void a(Object obj) {
        if (obj instanceof Character) {
            this.f2762b = String.valueOf(((Character) obj).charValue());
        } else {
            com.google.ads.interactivemedia.v3.a.b.a.a((obj instanceof Number) || b(obj));
            this.f2762b = obj;
        }
    }

    public boolean o() {
        return this.f2762b instanceof Boolean;
    }

    @Override // com.google.ads.interactivemedia.v3.a.l
    Boolean n() {
        return (Boolean) this.f2762b;
    }

    @Override // com.google.ads.interactivemedia.v3.a.l
    public boolean f() {
        return o() ? n().booleanValue() : Boolean.parseBoolean(b());
    }

    public boolean p() {
        return this.f2762b instanceof Number;
    }

    @Override // com.google.ads.interactivemedia.v3.a.l
    public Number a() {
        return this.f2762b instanceof String ? new com.google.ads.interactivemedia.v3.a.b.f((String) this.f2762b) : (Number) this.f2762b;
    }

    public boolean q() {
        return this.f2762b instanceof String;
    }

    @Override // com.google.ads.interactivemedia.v3.a.l
    public String b() {
        if (p()) {
            return a().toString();
        }
        if (o()) {
            return n().toString();
        }
        return (String) this.f2762b;
    }

    @Override // com.google.ads.interactivemedia.v3.a.l
    public double c() {
        return p() ? a().doubleValue() : Double.parseDouble(b());
    }

    @Override // com.google.ads.interactivemedia.v3.a.l
    public long d() {
        return p() ? a().longValue() : Long.parseLong(b());
    }

    @Override // com.google.ads.interactivemedia.v3.a.l
    public int e() {
        return p() ? a().intValue() : Integer.parseInt(b());
    }

    private static boolean b(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class<?> cls = obj.getClass();
        for (Class<?> cls2 : f2761a) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        if (this.f2762b == null) {
            return 31;
        }
        if (a(this)) {
            long jLongValue = a().longValue();
            return (int) (jLongValue ^ (jLongValue >>> 32));
        }
        if (this.f2762b instanceof Number) {
            long jDoubleToLongBits = Double.doubleToLongBits(a().doubleValue());
            return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
        }
        return this.f2762b.hashCode();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        if (this.f2762b == null) {
            return qVar.f2762b == null;
        }
        if (a(this) && a(qVar)) {
            return a().longValue() == qVar.a().longValue();
        }
        if ((this.f2762b instanceof Number) && (qVar.f2762b instanceof Number)) {
            double dDoubleValue = a().doubleValue();
            double dDoubleValue2 = qVar.a().doubleValue();
            if (dDoubleValue == dDoubleValue2 || (Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2))) {
                z = true;
            }
            return z;
        }
        return this.f2762b.equals(qVar.f2762b);
    }

    private static boolean a(q qVar) {
        if (!(qVar.f2762b instanceof Number)) {
            return false;
        }
        Number number = (Number) qVar.f2762b;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }
}
