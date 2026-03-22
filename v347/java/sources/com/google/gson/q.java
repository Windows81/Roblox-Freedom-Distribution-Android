package com.google.gson;

import java.math.BigInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class q extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?>[] f6337a = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f6338b;

    public q(Boolean bool) {
        a(bool);
    }

    public q(Number number) {
        a(number);
    }

    public q(String str) {
        a(str);
    }

    q(Object obj) {
        a(obj);
    }

    void a(Object obj) {
        if (obj instanceof Character) {
            this.f6338b = String.valueOf(((Character) obj).charValue());
        } else {
            com.google.gson.internal.a.a((obj instanceof Number) || b(obj));
            this.f6338b = obj;
        }
    }

    public boolean a() {
        return this.f6338b instanceof Boolean;
    }

    @Override // com.google.gson.k
    Boolean o() {
        return (Boolean) this.f6338b;
    }

    @Override // com.google.gson.k
    public boolean g() {
        return a() ? o().booleanValue() : Boolean.parseBoolean(c());
    }

    public boolean p() {
        return this.f6338b instanceof Number;
    }

    @Override // com.google.gson.k
    public Number b() {
        return this.f6338b instanceof String ? new com.google.gson.internal.e((String) this.f6338b) : (Number) this.f6338b;
    }

    public boolean q() {
        return this.f6338b instanceof String;
    }

    @Override // com.google.gson.k
    public String c() {
        if (p()) {
            return b().toString();
        }
        if (a()) {
            return o().toString();
        }
        return (String) this.f6338b;
    }

    @Override // com.google.gson.k
    public double d() {
        return p() ? b().doubleValue() : Double.parseDouble(c());
    }

    @Override // com.google.gson.k
    public long e() {
        return p() ? b().longValue() : Long.parseLong(c());
    }

    @Override // com.google.gson.k
    public int f() {
        return p() ? b().intValue() : Integer.parseInt(c());
    }

    private static boolean b(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class<?> cls = obj.getClass();
        for (Class<?> cls2 : f6337a) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        if (this.f6338b == null) {
            return 31;
        }
        if (a(this)) {
            long jLongValue = b().longValue();
            return (int) (jLongValue ^ (jLongValue >>> 32));
        }
        if (this.f6338b instanceof Number) {
            long jDoubleToLongBits = Double.doubleToLongBits(b().doubleValue());
            return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
        }
        return this.f6338b.hashCode();
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
        if (this.f6338b == null) {
            return qVar.f6338b == null;
        }
        if (a(this) && a(qVar)) {
            return b().longValue() == qVar.b().longValue();
        }
        if ((this.f6338b instanceof Number) && (qVar.f6338b instanceof Number)) {
            double dDoubleValue = b().doubleValue();
            double dDoubleValue2 = qVar.b().doubleValue();
            if (dDoubleValue == dDoubleValue2 || (Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2))) {
                z = true;
            }
            return z;
        }
        return this.f6338b.equals(qVar.f6338b);
    }

    private static boolean a(q qVar) {
        if (!(qVar.f6338b instanceof Number)) {
            return false;
        }
        Number number = (Number) qVar.f6338b;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }
}
