package com.google.android.gms.internal.ads;

import android.support.v7.widget.RecyclerView;
import java.lang.reflect.Field;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class ada {
    private int A;
    private int B;
    private Field C;
    private Object D;
    private Object E;
    private Object F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final adb f3816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f3817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Class<?> f3818c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3819d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;
    private final int m;
    private final int[] n;
    private int o;
    private int p;
    private int q = Integer.MAX_VALUE;
    private int r = Integer.MIN_VALUE;
    private int s = 0;
    private int t = 0;
    private int u = 0;
    private int v = 0;
    private int w = 0;
    private int x;
    private int y;
    private int z;

    ada(Class<?> cls, String str, Object[] objArr) {
        this.f3818c = cls;
        this.f3816a = new adb(str);
        this.f3817b = objArr;
        this.f3819d = this.f3816a.b();
        this.e = this.f3816a.b();
        if (this.e == 0) {
            this.f = 0;
            this.g = 0;
            this.h = 0;
            this.i = 0;
            this.j = 0;
            this.l = 0;
            this.k = 0;
            this.m = 0;
            this.n = null;
            return;
        }
        this.f = this.f3816a.b();
        this.g = this.f3816a.b();
        this.h = this.f3816a.b();
        this.i = this.f3816a.b();
        this.l = this.f3816a.b();
        this.k = this.f3816a.b();
        this.j = this.f3816a.b();
        this.m = this.f3816a.b();
        int iB = this.f3816a.b();
        this.n = iB != 0 ? new int[iB] : null;
        this.o = (this.f << 1) + this.g;
    }

    private static Field a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            throw new RuntimeException(new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(string).length()).append("Field ").append(str).append(" for ").append(name).append(" not found. Known fields are ").append(string).toString());
        }
    }

    private final Object p() {
        Object[] objArr = this.f3817b;
        int i = this.o;
        this.o = i + 1;
        return objArr[i];
    }

    private final boolean q() {
        return (this.f3819d & 1) == 1;
    }

    final boolean a() {
        if (!this.f3816a.a()) {
            return false;
        }
        this.x = this.f3816a.b();
        this.y = this.f3816a.b();
        this.z = this.y & 255;
        if (this.x < this.q) {
            this.q = this.x;
        }
        if (this.x > this.r) {
            this.r = this.x;
        }
        if (this.z == aay.MAP.a()) {
            this.s++;
        } else if (this.z >= aay.DOUBLE_LIST.a() && this.z <= aay.GROUP_LIST.a()) {
            this.t++;
        }
        this.w++;
        if (adf.a(this.q, this.x, this.w)) {
            this.v = this.x + 1;
            this.u = this.v - this.q;
        } else {
            this.u++;
        }
        if ((this.y & 1024) != 0) {
            int[] iArr = this.n;
            int i = this.p;
            this.p = i + 1;
            iArr[i] = this.x;
        }
        this.D = null;
        this.E = null;
        this.F = null;
        if (d()) {
            this.A = this.f3816a.b();
            if (this.z == aay.MESSAGE.a() + 51 || this.z == aay.GROUP.a() + 51) {
                this.D = p();
            } else if (this.z == aay.ENUM.a() + 51 && q()) {
                this.E = p();
            }
        } else {
            this.C = a(this.f3818c, (String) p());
            if (h()) {
                this.B = this.f3816a.b();
            }
            if (this.z == aay.MESSAGE.a() || this.z == aay.GROUP.a()) {
                this.D = this.C.getType();
            } else if (this.z == aay.MESSAGE_LIST.a() || this.z == aay.GROUP_LIST.a()) {
                this.D = p();
            } else if (this.z == aay.ENUM.a() || this.z == aay.ENUM_LIST.a() || this.z == aay.ENUM_LIST_PACKED.a()) {
                if (q()) {
                    this.E = p();
                }
            } else if (this.z == aay.MAP.a()) {
                this.F = p();
                if ((this.y & RecyclerView.ItemAnimator.FLAG_MOVED) != 0) {
                    this.E = p();
                }
            }
        }
        return true;
    }

    final int b() {
        return this.x;
    }

    final int c() {
        return this.z;
    }

    final boolean d() {
        return this.z > aay.MAP.a();
    }

    final Field e() {
        int i = this.A << 1;
        Object obj = this.f3817b[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field fieldA = a(this.f3818c, (String) obj);
        this.f3817b[i] = fieldA;
        return fieldA;
    }

    final Field f() {
        int i = (this.A << 1) + 1;
        Object obj = this.f3817b[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field fieldA = a(this.f3818c, (String) obj);
        this.f3817b[i] = fieldA;
        return fieldA;
    }

    final Field g() {
        return this.C;
    }

    final boolean h() {
        return q() && this.z <= aay.GROUP.a();
    }

    final Field i() {
        int i = (this.B / 32) + (this.f << 1);
        Object obj = this.f3817b[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field fieldA = a(this.f3818c, (String) obj);
        this.f3817b[i] = fieldA;
        return fieldA;
    }

    final int j() {
        return this.B % 32;
    }

    final boolean k() {
        return (this.y & 256) != 0;
    }

    final boolean l() {
        return (this.y & 512) != 0;
    }

    final Object m() {
        return this.D;
    }

    final Object n() {
        return this.E;
    }

    final Object o() {
        return this.F;
    }
}
