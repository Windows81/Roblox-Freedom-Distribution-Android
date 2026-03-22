package com.google.gson.internal;

import com.google.gson.m;
import com.google.gson.n;
import com.google.gson.p;
import com.google.gson.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class k {
    public static com.google.gson.l a(com.google.gson.c.a aVar) throws p {
        boolean z;
        try {
            try {
                aVar.f();
                z = false;
            } catch (EOFException e2) {
                e = e2;
                z = true;
            }
            try {
                return com.google.gson.internal.bind.i.X.b(aVar);
            } catch (EOFException e3) {
                e = e3;
                if (z) {
                    return n.f5507a;
                }
                throw new t(e);
            }
        } catch (com.google.gson.c.d e4) {
            throw new t(e4);
        } catch (IOException e5) {
            throw new m(e5);
        } catch (NumberFormatException e6) {
            throw new t(e6);
        }
    }

    public static void a(com.google.gson.l lVar, com.google.gson.c.c cVar) throws IOException {
        com.google.gson.internal.bind.i.X.a(cVar, lVar);
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }

    private static final class a extends Writer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Appendable f5499a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final C0116a f5500b = new C0116a();

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        a(Appendable appendable) {
            this.f5499a = appendable;
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            this.f5500b.f5501a = cArr;
            this.f5499a.append(this.f5500b, i, i2 + i);
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            this.f5499a.append((char) i);
        }

        /* JADX INFO: renamed from: com.google.gson.internal.k$a$a, reason: collision with other inner class name */
        static class C0116a implements CharSequence {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            char[] f5501a;

            C0116a() {
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f5501a.length;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.f5501a[i];
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.f5501a, i, i2 - i);
            }
        }
    }
}
