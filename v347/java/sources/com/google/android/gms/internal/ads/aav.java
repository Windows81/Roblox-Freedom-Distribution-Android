package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aax;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class aav<FieldDescriptorType extends aax<FieldDescriptorType>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final aav f3723d = new aav(true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3726c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final adg<FieldDescriptorType, Object> f3724a = adg.a(16);

    private aav() {
    }

    private aav(boolean z) {
        c();
    }

    static int a(aek aekVar, int i, Object obj) {
        int i2;
        int iE = aaj.e(i);
        if (aekVar == aek.j) {
            abf.a((ack) obj);
            i2 = iE << 1;
        } else {
            i2 = iE;
        }
        return i2 + b(aekVar, obj);
    }

    public static <T extends aax<T>> aav<T> a() {
        return f3723d;
    }

    private final Object a(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f3724a.get(fielddescriptortype);
        return obj instanceof abm ? abm.a() : obj;
    }

    private static Object a(Object obj) {
        if (obj instanceof acs) {
            return ((acs) obj).a();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    static void a(aaj aajVar, aek aekVar, int i, Object obj) throws IOException {
        if (aekVar == aek.j) {
            abf.a((ack) obj);
            aajVar.a(i, 3);
            ((ack) obj).a(aajVar);
            aajVar.a(i, 4);
        }
        aajVar.a(i, aekVar.b());
        switch (aaw.f3728b[aekVar.ordinal()]) {
            case 1:
                aajVar.a(((Double) obj).doubleValue());
                break;
            case 2:
                aajVar.a(((Float) obj).floatValue());
                break;
            case 3:
                aajVar.a(((Long) obj).longValue());
                break;
            case 4:
                aajVar.a(((Long) obj).longValue());
                break;
            case 5:
                aajVar.a(((Integer) obj).intValue());
                break;
            case 6:
                aajVar.c(((Long) obj).longValue());
                break;
            case 7:
                aajVar.d(((Integer) obj).intValue());
                break;
            case 8:
                aajVar.a(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((ack) obj).a(aajVar);
                break;
            case 10:
                aajVar.a((ack) obj);
                break;
            case 11:
                if (!(obj instanceof zv)) {
                    aajVar.a((String) obj);
                } else {
                    aajVar.a((zv) obj);
                }
                break;
            case 12:
                if (!(obj instanceof zv)) {
                    byte[] bArr = (byte[]) obj;
                    aajVar.c(bArr, 0, bArr.length);
                } else {
                    aajVar.a((zv) obj);
                }
                break;
            case 13:
                aajVar.b(((Integer) obj).intValue());
                break;
            case 14:
                aajVar.d(((Integer) obj).intValue());
                break;
            case 15:
                aajVar.c(((Long) obj).longValue());
                break;
            case 16:
                aajVar.c(((Integer) obj).intValue());
                break;
            case 17:
                aajVar.b(((Long) obj).longValue());
                break;
            case 18:
                if (!(obj instanceof abg)) {
                    aajVar.a(((Integer) obj).intValue());
                } else {
                    aajVar.a(((abg) obj).a());
                }
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void a(FieldDescriptorType fielddescriptortype, Object obj) {
        ?? arrayList;
        if (!fielddescriptortype.d()) {
            a(fielddescriptortype.b(), obj);
            arrayList = obj;
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = (ArrayList) arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList2.get(i);
                i++;
                a(fielddescriptortype.b(), obj2);
            }
        }
        if (arrayList instanceof abm) {
            this.f3726c = true;
        }
        this.f3724a.put(fielddescriptortype, arrayList);
    }

    private static void a(aek aekVar, Object obj) {
        boolean z = false;
        abf.a(obj);
        switch (aaw.f3727a[aekVar.a().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                break;
            case 2:
                z = obj instanceof Long;
                break;
            case 3:
                z = obj instanceof Float;
                break;
            case 4:
                z = obj instanceof Double;
                break;
            case 5:
                z = obj instanceof Boolean;
                break;
            case 6:
                z = obj instanceof String;
                break;
            case 7:
                if ((obj instanceof zv) || (obj instanceof byte[])) {
                    z = true;
                }
                break;
            case 8:
                if ((obj instanceof Integer) || (obj instanceof abg)) {
                    z = true;
                }
                break;
            case 9:
                if ((obj instanceof ack) || (obj instanceof abm)) {
                    z = true;
                }
                break;
        }
        if (!z) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    private static boolean a(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.c() == aep.MESSAGE) {
            if (key.d()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((ack) it.next()).k()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (!(value instanceof ack)) {
                    if (value instanceof abm) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((ack) value).k()) {
                    return false;
                }
            }
        }
        return true;
    }

    private static int b(aax<?> aaxVar, Object obj) {
        int iA = 0;
        aek aekVarB = aaxVar.b();
        int iA2 = aaxVar.a();
        if (!aaxVar.d()) {
            return a(aekVarB, iA2, obj);
        }
        if (!aaxVar.e()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iA += a(aekVarB, iA2, it.next());
            }
            return iA;
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            iA += b(aekVarB, it2.next());
        }
        return aaj.l(iA) + aaj.e(iA2) + iA;
    }

    private static int b(aek aekVar, Object obj) {
        switch (aaw.f3728b[aekVar.ordinal()]) {
            case 1:
                return aaj.b(((Double) obj).doubleValue());
            case 2:
                return aaj.b(((Float) obj).floatValue());
            case 3:
                return aaj.d(((Long) obj).longValue());
            case 4:
                return aaj.e(((Long) obj).longValue());
            case 5:
                return aaj.f(((Integer) obj).intValue());
            case 6:
                return aaj.g(((Long) obj).longValue());
            case 7:
                return aaj.i(((Integer) obj).intValue());
            case 8:
                return aaj.b(((Boolean) obj).booleanValue());
            case 9:
                return aaj.c((ack) obj);
            case 10:
                return obj instanceof abm ? aaj.a((abm) obj) : aaj.b((ack) obj);
            case 11:
                return obj instanceof zv ? aaj.b((zv) obj) : aaj.b((String) obj);
            case 12:
                return obj instanceof zv ? aaj.b((zv) obj) : aaj.b((byte[]) obj);
            case 13:
                return aaj.g(((Integer) obj).intValue());
            case 14:
                return aaj.j(((Integer) obj).intValue());
            case 15:
                return aaj.h(((Long) obj).longValue());
            case 16:
                return aaj.h(((Integer) obj).intValue());
            case 17:
                return aaj.f(((Long) obj).longValue());
            case 18:
                return obj instanceof abg ? aaj.k(((abg) obj).a()) : aaj.k(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    private final void b(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof abm) {
            value = abm.a();
        }
        if (key.d()) {
            Object objA = a((aax) key);
            if (objA == null) {
                objA = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objA).add(a(it.next()));
            }
            this.f3724a.put(key, objA);
            return;
        }
        if (key.c() != aep.MESSAGE) {
            this.f3724a.put(key, a(value));
            return;
        }
        Object objA2 = a((aax) key);
        if (objA2 == null) {
            this.f3724a.put(key, a(value));
        } else {
            this.f3724a.put(key, objA2 instanceof acs ? key.a((acs) objA2, (acs) value) : key.a(((ack) objA2).n(), (ack) value).e());
        }
    }

    private static int c(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        return (key.c() != aep.MESSAGE || key.d() || key.e()) ? b((aax<?>) key, value) : value instanceof abm ? aaj.b(entry.getKey().a(), (abm) value) : aaj.b(entry.getKey().a(), (ack) value);
    }

    public final void a(aav<FieldDescriptorType> aavVar) {
        for (int i = 0; i < aavVar.f3724a.c(); i++) {
            b(aavVar.f3724a.b(i));
        }
        Iterator it = aavVar.f3724a.d().iterator();
        while (it.hasNext()) {
            b((Map.Entry) it.next());
        }
    }

    final boolean b() {
        return this.f3724a.isEmpty();
    }

    public final void c() {
        if (this.f3725b) {
            return;
        }
        this.f3724a.a();
        this.f3725b = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        aav aavVar = new aav();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f3724a.c()) {
                break;
            }
            Map.Entry<K, Object> entryB = this.f3724a.b(i2);
            aavVar.a((aax) entryB.getKey(), entryB.getValue());
            i = i2 + 1;
        }
        Iterator it = this.f3724a.d().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            aavVar.a((aax) entry.getKey(), entry.getValue());
        }
        aavVar.f3726c = this.f3726c;
        return aavVar;
    }

    public final boolean d() {
        return this.f3725b;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> e() {
        return this.f3726c ? new abq(this.f3724a.entrySet().iterator()) : this.f3724a.entrySet().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof aav) {
            return this.f3724a.equals(((aav) obj).f3724a);
        }
        return false;
    }

    final Iterator<Map.Entry<FieldDescriptorType, Object>> f() {
        return this.f3726c ? new abq(this.f3724a.e().iterator()) : this.f3724a.e().iterator();
    }

    public final boolean g() {
        for (int i = 0; i < this.f3724a.c(); i++) {
            if (!a((Map.Entry) this.f3724a.b(i))) {
                return false;
            }
        }
        Iterator it = this.f3724a.d().iterator();
        while (it.hasNext()) {
            if (!a((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int h() {
        int iB = 0;
        for (int i = 0; i < this.f3724a.c(); i++) {
            Map.Entry<K, Object> entryB = this.f3724a.b(i);
            iB += b((aax<?>) entryB.getKey(), entryB.getValue());
        }
        Iterator it = this.f3724a.d().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            iB += b((aax<?>) entry.getKey(), entry.getValue());
        }
        return iB;
    }

    public final int hashCode() {
        return this.f3724a.hashCode();
    }

    public final int i() {
        int iC = 0;
        for (int i = 0; i < this.f3724a.c(); i++) {
            iC += c(this.f3724a.b(i));
        }
        Iterator it = this.f3724a.d().iterator();
        while (it.hasNext()) {
            iC += c((Map.Entry) it.next());
        }
        return iC;
    }
}
