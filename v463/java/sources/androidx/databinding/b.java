package androidx.databinding;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b<C, T, A> implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<C> f1576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f1577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long[] f1578c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1579d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<C, T, A> f1580e;

    public static abstract class a<C, T, A> {
        public abstract void a(C c2, T t, int i, A a2);
    }

    public synchronized void a(T t, int i, A a2) {
        this.f1579d++;
        c(t, i, a2);
        int i2 = this.f1579d - 1;
        this.f1579d = i2;
        if (i2 == 0) {
            if (this.f1578c != null) {
                for (int length = this.f1578c.length - 1; length >= 0; length--) {
                    long j = this.f1578c[length];
                    if (j != 0) {
                        a((length + 1) * 64, j);
                        this.f1578c[length] = 0;
                    }
                }
            }
            if (this.f1577b != 0) {
                a(0, this.f1577b);
                this.f1577b = 0L;
            }
        }
    }

    private void b(T t, int i, A a2) {
        a(t, i, a2, 0, Math.min(64, this.f1576a.size()), this.f1577b);
    }

    private void c(T t, int i, A a2) {
        int size = this.f1576a.size();
        int length = this.f1578c == null ? -1 : r0.length - 1;
        a(t, i, a2, length);
        a(t, i, a2, (length + 2) * 64, size, 0L);
    }

    private void a(T t, int i, A a2, int i2) {
        if (i2 < 0) {
            b(t, i, a2);
            return;
        }
        long j = this.f1578c[i2];
        int i3 = (i2 + 1) * 64;
        int iMin = Math.min(this.f1576a.size(), i3 + 64);
        a(t, i, a2, i2 - 1);
        a(t, i, a2, i3, iMin, j);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void a(T t, int i, A a2, int i2, int i3, long j) {
        long j2 = 1;
        while (i2 < i3) {
            if ((j & j2) == 0) {
                this.f1580e.a(this.f1576a.get(i2), t, i, a2);
            }
            j2 <<= 1;
            i2++;
        }
    }

    private boolean a(int i) {
        int i2;
        if (i < 64) {
            return ((1 << i) & this.f1577b) != 0;
        }
        long[] jArr = this.f1578c;
        if (jArr != null && (i2 = (i / 64) - 1) < jArr.length) {
            return ((1 << (i % 64)) & jArr[i2]) != 0;
        }
        return false;
    }

    private void a(int i, long j) {
        long j2 = Long.MIN_VALUE;
        for (int i2 = (i + 64) - 1; i2 >= i; i2--) {
            if ((j & j2) != 0) {
                this.f1576a.remove(i2);
            }
            j2 >>>= 1;
        }
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public synchronized b<C, T, A> clone() {
        b<C, T, A> bVar;
        CloneNotSupportedException e2;
        try {
            bVar = (b) super.clone();
            try {
                bVar.f1577b = 0L;
                bVar.f1578c = null;
                bVar.f1579d = 0;
                bVar.f1576a = new ArrayList();
                int size = this.f1576a.size();
                for (int i = 0; i < size; i++) {
                    if (!a(i)) {
                        bVar.f1576a.add(this.f1576a.get(i));
                    }
                }
            } catch (CloneNotSupportedException e3) {
                e2 = e3;
                e2.printStackTrace();
            }
        } catch (CloneNotSupportedException e4) {
            bVar = null;
            e2 = e4;
        }
        return bVar;
    }
}
