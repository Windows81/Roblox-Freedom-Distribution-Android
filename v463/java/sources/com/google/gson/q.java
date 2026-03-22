package com.google.gson;

import java.math.BigInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class q extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?>[] f5509a = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f5510b;

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
            this.f5510b = String.valueOf(((Character) obj).charValue());
        } else {
            com.google.gson.internal.a.a((obj instanceof Number) || b(obj));
            this.f5510b = obj;
        }
    }

    public boolean o() {
        return this.f5510b instanceof Boolean;
    }

    @Override // com.google.gson.l
    Boolean n() {
        return (Boolean) this.f5510b;
    }

    @Override // com.google.gson.l
    public boolean f() {
        if (o()) {
            return n().booleanValue();
        }
        return Boolean.parseBoolean(b());
    }

    public boolean p() {
        return this.f5510b instanceof Number;
    }

    @Override // com.google.gson.l
    public Number a() {
        Object obj = this.f5510b;
        return obj instanceof String ? new com.google.gson.internal.f((String) this.f5510b) : (Number) obj;
    }

    public boolean q() {
        return this.f5510b instanceof String;
    }

    @Override // com.google.gson.l
    public String b() {
        if (p()) {
            return a().toString();
        }
        if (o()) {
            return n().toString();
        }
        return (String) this.f5510b;
    }

    @Override // com.google.gson.l
    public double c() {
        return p() ? a().doubleValue() : Double.parseDouble(b());
    }

    @Override // com.google.gson.l
    public long d() {
        return p() ? a().longValue() : Long.parseLong(b());
    }

    @Override // com.google.gson.l
    public int e() {
        return p() ? a().intValue() : Integer.parseInt(b());
    }

    private static boolean b(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class<?> cls = obj.getClass();
        for (Class<?> cls2 : f5509a) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long jDoubleToLongBits;
        if (this.f5510b == null) {
            return 31;
        }
        if (a(this)) {
            jDoubleToLongBits = a().longValue();
        } else {
            Object obj = this.f5510b;
            if (obj instanceof Number) {
                jDoubleToLongBits = Double.doubleToLongBits(a().doubleValue());
            } else {
                return obj.hashCode();
            }
        }
        return (int) ((jDoubleToLongBits >>> 32) ^ jDoubleToLongBits);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        if (this.f5510b == null) {
            return qVar.f5510b == null;
        }
        if (a(this) && a(qVar)) {
            return a().longValue() == qVar.a().longValue();
        }
        if ((this.f5510b instanceof Number) && (qVar.f5510b instanceof Number)) {
            double dDoubleValue = a().doubleValue();
            double dDoubleValue2 = qVar.a().doubleValue();
            if (dDoubleValue != dDoubleValue2) {
                return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
            }
            return true;
        }
        return this.f5510b.equals(qVar.f5510b);
    }

    private static boolean a(q qVar) {
        Object obj = qVar.f5510b;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }
}
