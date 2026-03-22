package androidx.versionedparcelable;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a {
    protected abstract void a(int i);

    protected abstract void a(Parcelable parcelable);

    protected abstract void a(String str);

    public void a(boolean z, boolean z2) {
    }

    protected abstract void a(byte[] bArr);

    public boolean a() {
        return false;
    }

    protected abstract void b();

    protected abstract boolean b(int i);

    protected abstract a c();

    protected abstract void c(int i);

    protected abstract int d();

    protected abstract String e();

    protected abstract byte[] f();

    protected abstract <T extends Parcelable> T g();

    public void a(byte[] bArr, int i) {
        c(i);
        a(bArr);
    }

    public void a(int i, int i2) {
        c(i2);
        a(i);
    }

    public void a(String str, int i) {
        c(i);
        a(str);
    }

    public void a(Parcelable parcelable, int i) {
        c(i);
        a(parcelable);
    }

    public int b(int i, int i2) {
        return !b(i2) ? i : d();
    }

    public String b(String str, int i) {
        return !b(i) ? str : e();
    }

    public byte[] b(byte[] bArr, int i) {
        return !b(i) ? bArr : f();
    }

    public <T extends Parcelable> T b(T t, int i) {
        return !b(i) ? t : (T) g();
    }

    public void a(c cVar, int i) {
        c(i);
        a(cVar);
    }

    protected void a(c cVar) {
        if (cVar == null) {
            a((String) null);
            return;
        }
        b(cVar);
        a aVarC = c();
        a(cVar, aVarC);
        aVarC.b();
    }

    private void b(c cVar) {
        try {
            a(a((Class<? extends c>) cVar.getClass()).getName());
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException(cVar.getClass().getSimpleName() + " does not have a Parcelizer", e2);
        }
    }

    public <T extends c> T b(T t, int i) {
        return !b(i) ? t : (T) h();
    }

    protected <T extends c> T h() {
        String strE = e();
        if (strE == null) {
            return null;
        }
        return (T) a(strE, c());
    }

    protected static <T extends c> T a(String str, a aVar) {
        try {
            return (T) Class.forName(str, true, a.class.getClassLoader()).getDeclaredMethod("read", a.class).invoke(null, aVar);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (InvocationTargetException e5) {
            if (e5.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e5.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
        }
    }

    protected static <T extends c> void a(T t, a aVar) {
        try {
            c(t).getDeclaredMethod("write", t.getClass(), a.class).invoke(null, t, aVar);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e4);
        } catch (InvocationTargetException e5) {
            if (e5.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e5.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e5);
        }
    }

    private static <T extends c> Class c(T t) throws ClassNotFoundException {
        return a((Class<? extends c>) t.getClass());
    }

    private static Class a(Class<? extends c> cls) throws ClassNotFoundException {
        return Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
    }
}
