package android.support.v4.f;

import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final android.support.v4.f.b f910a = new e(null, false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final android.support.v4.f.b f911b = new e(null, true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final android.support.v4.f.b f912c = new e(b.f917a, false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final android.support.v4.f.b f913d = new e(b.f917a, true);
    public static final android.support.v4.f.b e = new e(a.f914a, false);
    public static final android.support.v4.f.b f = f.f920a;

    /* JADX INFO: renamed from: android.support.v4.f.c$c, reason: collision with other inner class name */
    private interface InterfaceC0019c {
        int a(CharSequence charSequence, int i, int i2);
    }

    static int a(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
            case 2:
                return 0;
            default:
                return 2;
        }
    }

    static int b(int i) {
        switch (i) {
            case 0:
            case 14:
            case 15:
                return 1;
            case 1:
            case 2:
            case 16:
            case 17:
                return 0;
            default:
                return 2;
        }
    }

    private static abstract class d implements android.support.v4.f.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final InterfaceC0019c f918a;

        protected abstract boolean a();

        public d(InterfaceC0019c interfaceC0019c) {
            this.f918a = interfaceC0019c;
        }

        @Override // android.support.v4.f.b
        public boolean a(CharSequence charSequence, int i, int i2) {
            if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            return this.f918a == null ? a() : b(charSequence, i, i2);
        }

        private boolean b(CharSequence charSequence, int i, int i2) {
            switch (this.f918a.a(charSequence, i, i2)) {
                case 0:
                    return true;
                case 1:
                    return false;
                default:
                    return a();
            }
        }
    }

    private static class e extends d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f919a;

        e(InterfaceC0019c interfaceC0019c, boolean z) {
            super(interfaceC0019c);
            this.f919a = z;
        }

        @Override // android.support.v4.f.c.d
        protected boolean a() {
            return this.f919a;
        }
    }

    private static class b implements InterfaceC0019c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f917a = new b();

        @Override // android.support.v4.f.c.InterfaceC0019c
        public int a(CharSequence charSequence, int i, int i2) {
            int i3 = i + i2;
            int iB = 2;
            while (i < i3 && iB == 2) {
                iB = c.b(Character.getDirectionality(charSequence.charAt(i)));
                i++;
            }
            return iB;
        }

        private b() {
        }
    }

    private static class a implements InterfaceC0019c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f914a = new a(true);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f915b = new a(false);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f916c;

        @Override // android.support.v4.f.c.InterfaceC0019c
        public int a(CharSequence charSequence, int i, int i2) {
            int i3 = i + i2;
            boolean z = false;
            while (i < i3) {
                switch (c.a(Character.getDirectionality(charSequence.charAt(i)))) {
                    case 0:
                        if (this.f916c) {
                            return 0;
                        }
                        z = true;
                        break;
                    case 1:
                        if (!this.f916c) {
                            return 1;
                        }
                        z = true;
                        break;
                        break;
                }
                i++;
            }
            if (z) {
                return !this.f916c ? 0 : 1;
            }
            return 2;
        }

        private a(boolean z) {
            this.f916c = z;
        }
    }

    private static class f extends d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f920a = new f();

        public f() {
            super(null);
        }

        @Override // android.support.v4.f.c.d
        protected boolean a() {
            return android.support.v4.f.d.a(Locale.getDefault()) == 1;
        }
    }
}
