package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;
import com.google.android.gms.internal.ads.abd.a;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class abd<MessageType extends abd<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends zk<MessageType, BuilderType> {
    private static Map<Object, abd<?, ?>> zzdtv = new ConcurrentHashMap();
    protected adx zzdtt = adx.a();
    private int zzdtu = -1;

    public static abstract class a<MessageType extends abd<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends zl<MessageType, BuilderType> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected MessageType f3743a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final MessageType f3744b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f3745c = false;

        protected a(MessageType messagetype) {
            this.f3744b = messagetype;
            this.f3743a = (MessageType) messagetype.a(e.f3750d, null, null);
        }

        private static void a(MessageType messagetype, MessageType messagetype2) {
            acx.a().a(messagetype).b(messagetype, messagetype2);
        }

        @Override // com.google.android.gms.internal.ads.zl
        public final BuilderType a(MessageType messagetype) {
            b();
            a(this.f3743a, messagetype);
            return this;
        }

        @Override // com.google.android.gms.internal.ads.zl
        /* JADX INFO: renamed from: a */
        public final /* synthetic */ zl clone() {
            return (a) clone();
        }

        protected final void b() {
            if (this.f3745c) {
                MessageType messagetype = (MessageType) this.f3743a.a(e.f3750d, null, null);
                a(messagetype, this.f3743a);
                this.f3743a = messagetype;
                this.f3745c = false;
            }
        }

        public final MessageType c() {
            MessageType messagetype;
            boolean z;
            if (this.f3745c) {
                messagetype = this.f3743a;
            } else {
                MessageType messagetype2 = this.f3743a;
                acx.a().a(messagetype2).c(messagetype2);
                this.f3745c = true;
                messagetype = this.f3743a;
            }
            MessageType messagetype3 = messagetype;
            boolean zBooleanValue = Boolean.TRUE.booleanValue();
            byte bByteValue = ((Byte) messagetype3.a(e.f3747a, null, null)).byteValue();
            if (bByteValue == 1) {
                z = true;
            } else if (bByteValue == 0) {
                z = false;
            } else {
                boolean zD = acx.a().a(messagetype3).d(messagetype3);
                if (zBooleanValue) {
                    messagetype3.a(e.f3748b, zD ? messagetype3 : null, null);
                }
                z = zD;
            }
            if (z) {
                return messagetype3;
            }
            throw new adv(messagetype3);
        }

        @Override // com.google.android.gms.internal.ads.zl
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            MessageType messagetype;
            a aVar = (a) this.f3744b.a(e.e, null, null);
            if (this.f3745c) {
                messagetype = this.f3743a;
            } else {
                MessageType messagetype2 = this.f3743a;
                acx.a().a(messagetype2).c(messagetype2);
                this.f3745c = true;
                messagetype = this.f3743a;
            }
            aVar.a((abd) messagetype);
            return aVar;
        }

        @Override // com.google.android.gms.internal.ads.acl
        public final /* synthetic */ ack d() {
            if (this.f3745c) {
                return this.f3743a;
            }
            MessageType messagetype = this.f3743a;
            acx.a().a(messagetype).c(messagetype);
            this.f3745c = true;
            return this.f3743a;
        }

        @Override // com.google.android.gms.internal.ads.acl
        public final /* synthetic */ ack e() {
            MessageType messagetype;
            boolean z;
            if (this.f3745c) {
                messagetype = this.f3743a;
            } else {
                MessageType messagetype2 = this.f3743a;
                acx.a().a(messagetype2).c(messagetype2);
                this.f3745c = true;
                messagetype = this.f3743a;
            }
            MessageType messagetype3 = messagetype;
            boolean zBooleanValue = Boolean.TRUE.booleanValue();
            byte bByteValue = ((Byte) messagetype3.a(e.f3747a, null, null)).byteValue();
            if (bByteValue == 1) {
                z = true;
            } else if (bByteValue == 0) {
                z = false;
            } else {
                boolean zD = acx.a().a(messagetype3).d(messagetype3);
                if (zBooleanValue) {
                    messagetype3.a(e.f3748b, zD ? messagetype3 : null, null);
                }
                z = zD;
            }
            if (z) {
                return messagetype3;
            }
            throw new adv(messagetype3);
        }

        @Override // com.google.android.gms.internal.ads.acm
        public final boolean k() {
            return abd.a(this.f3743a, false);
        }

        @Override // com.google.android.gms.internal.ads.acm
        public final /* synthetic */ ack p() {
            return this.f3744b;
        }
    }

    public static class b<T extends abd<T, ?>> extends zo<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private T f3746a;

        public b(T t) {
            this.f3746a = t;
        }
    }

    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType> extends abd<MessageType, BuilderType> implements acm {
        protected aav<Object> zzdtz = aav.a();
    }

    public static class d<ContainingType extends ack, Type> extends aan<ContainingType, Type> {
    }

    public enum e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f3747a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f3748b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f3749c = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f3750d = 4;
        public static final int e = 5;
        public static final int f = 6;
        public static final int g = 7;
        private static final /* synthetic */ int[] l = {f3747a, f3748b, f3749c, f3750d, e, f, g};
        public static final int h = 1;
        public static final int i = 2;
        private static final /* synthetic */ int[] m = {h, i};
        public static final int j = 1;
        public static final int k = 2;
        private static final /* synthetic */ int[] n = {j, k};

        public static int[] a() {
            return (int[]) l.clone();
        }
    }

    private static <T extends abd<T, ?>> T a(T t, aae aaeVar, aaq aaqVar) throws abj {
        T t2 = (T) t.a(e.f3750d, null, null);
        try {
            acx.a().a(t2).a(t2, aah.a(aaeVar), aaqVar);
            acx.a().a(t2).c(t2);
            return t2;
        } catch (IOException e2) {
            if (e2.getCause() instanceof abj) {
                throw ((abj) e2.getCause());
            }
            throw new abj(e2.getMessage()).a(t2);
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof abj) {
                throw ((abj) e3.getCause());
            }
            throw e3;
        }
    }

    protected static <T extends abd<T, ?>> T a(T t, zv zvVar) throws abj {
        boolean z;
        boolean z2;
        vl vlVar = (T) a(t, zvVar, aaq.a());
        if (vlVar != null) {
            boolean zBooleanValue = Boolean.TRUE.booleanValue();
            byte bByteValue = ((Byte) vlVar.a(e.f3747a, (Object) null, (Object) null)).byteValue();
            if (bByteValue == 1) {
                z2 = true;
            } else if (bByteValue == 0) {
                z2 = false;
            } else {
                boolean zD = acx.a().a(vlVar).d(vlVar);
                if (zBooleanValue) {
                    vlVar.a(e.f3748b, zD ? vlVar : null, (Object) null);
                }
                z2 = zD;
            }
            if (!z2) {
                throw new adv(vlVar).a().a(vlVar);
            }
        }
        if (vlVar != null) {
            boolean zBooleanValue2 = Boolean.TRUE.booleanValue();
            byte bByteValue2 = ((Byte) vlVar.a(e.f3747a, (Object) null, (Object) null)).byteValue();
            if (bByteValue2 == 1) {
                z = true;
            } else if (bByteValue2 == 0) {
                z = false;
            } else {
                boolean zD2 = acx.a().a(vlVar).d(vlVar);
                if (zBooleanValue2) {
                    vlVar.a(e.f3748b, zD2 ? vlVar : null, (Object) null);
                }
                z = zD2;
            }
            if (!z) {
                throw new adv(vlVar).a().a(vlVar);
            }
        }
        return vlVar;
    }

    private static <T extends abd<T, ?>> T a(T t, zv zvVar, aaq aaqVar) throws abj {
        try {
            aae aaeVarE = zvVar.e();
            T t2 = (T) a(t, aaeVarE, aaqVar);
            try {
                aaeVarE.a(0);
                return t2;
            } catch (abj e2) {
                throw e2.a(t2);
            }
        } catch (abj e3) {
            throw e3;
        }
    }

    protected static <T extends abd<T, ?>> T a(T t, byte[] bArr) throws abj {
        boolean z;
        vl vlVar = (T) b(t, bArr);
        if (vlVar != null) {
            boolean zBooleanValue = Boolean.TRUE.booleanValue();
            byte bByteValue = ((Byte) vlVar.a(e.f3747a, (Object) null, (Object) null)).byteValue();
            if (bByteValue == 1) {
                z = true;
            } else if (bByteValue == 0) {
                z = false;
            } else {
                boolean zD = acx.a().a(vlVar).d(vlVar);
                if (zBooleanValue) {
                    vlVar.a(e.f3748b, zD ? vlVar : null, (Object) null);
                }
                z = zD;
            }
            if (!z) {
                throw new adv(vlVar).a().a(vlVar);
            }
        }
        return vlVar;
    }

    static <T extends abd<?, ?>> T a(Class<T> cls) {
        T t = (T) zzdtv.get(cls);
        if (t == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                t = (T) zzdtv.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (t != null) {
            return t;
        }
        String strValueOf = String.valueOf(cls.getName());
        throw new IllegalStateException(strValueOf.length() != 0 ? "Unable to get default instance for: ".concat(strValueOf) : new String("Unable to get default instance for: "));
    }

    protected static Object a(ack ackVar, String str, Object[] objArr) {
        return new acz(ackVar, str, objArr);
    }

    static Object a(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static <T extends abd<?, ?>> void a(Class<T> cls, T t) {
        zzdtv.put(cls, t);
    }

    protected static final <T extends abd<T, ?>> boolean a(T t, boolean z) {
        byte bByteValue = ((Byte) t.a(e.f3747a, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        return acx.a().a(t).d(t);
    }

    private static <T extends abd<T, ?>> T b(T t, byte[] bArr) throws abj {
        T t2 = (T) t.a(e.f3750d, null, null);
        try {
            acx.a().a(t2).a(t2, bArr, 0, bArr.length, new zs());
            acx.a().a(t2).c(t2);
            if (t2.zzdpf != 0) {
                throw new RuntimeException();
            }
            return t2;
        } catch (IOException e2) {
            if (e2.getCause() instanceof abj) {
                throw ((abj) e2.getCause());
            }
            throw new abj(e2.getMessage()).a(t2);
        } catch (IndexOutOfBoundsException e3) {
            throw abj.a().a(t2);
        }
    }

    protected static <E> abi<E> m() {
        return acy.d();
    }

    protected abstract Object a(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.ads.zk
    final void a(int i) {
        this.zzdtu = i;
    }

    @Override // com.google.android.gms.internal.ads.ack
    public final void a(aaj aajVar) throws IOException {
        acx.a().a((Class) getClass()).a(this, aal.a(aajVar));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((abd) a(e.f, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return acx.a().a(this).a(this, (abd) obj);
        }
        return false;
    }

    public int hashCode() {
        if (this.zzdpf != 0) {
            return this.zzdpf;
        }
        this.zzdpf = acx.a().a(this).a(this);
        return this.zzdpf;
    }

    @Override // com.google.android.gms.internal.ads.zk
    final int j() {
        return this.zzdtu;
    }

    @Override // com.google.android.gms.internal.ads.acm
    public final boolean k() {
        boolean zBooleanValue = Boolean.TRUE.booleanValue();
        byte bByteValue = ((Byte) a(e.f3747a, (Object) null, (Object) null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zD = acx.a().a(this).d(this);
        if (zBooleanValue) {
            a(e.f3748b, zD ? this : null, (Object) null);
        }
        return zD;
    }

    @Override // com.google.android.gms.internal.ads.ack
    public final int l() {
        if (this.zzdtu == -1) {
            this.zzdtu = acx.a().a(this).b(this);
        }
        return this.zzdtu;
    }

    @Override // com.google.android.gms.internal.ads.ack
    public final /* synthetic */ acl n() {
        a aVar = (a) a(e.e, (Object) null, (Object) null);
        aVar.a(this);
        return aVar;
    }

    @Override // com.google.android.gms.internal.ads.ack
    public final /* synthetic */ acl o() {
        return (a) a(e.e, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.ads.acm
    public final /* synthetic */ ack p() {
        return (abd) a(e.f, (Object) null, (Object) null);
    }

    public String toString() {
        return acn.a(this, super.toString());
    }
}
