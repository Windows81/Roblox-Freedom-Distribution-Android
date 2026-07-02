package com.google.gson.internal;

import com.google.gson.k;
import com.google.gson.l;
import com.google.gson.m;
import com.google.gson.o;
import com.google.gson.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    public static k a(com.google.gson.c.a aVar) throws o {
        boolean z = true;
        try {
            aVar.f();
            z = false;
            return com.google.gson.internal.bind.i.X.b(aVar);
        } catch (com.google.gson.c.d e) {
            throw new t(e);
        } catch (EOFException e2) {
            if (z) {
                return m.f6335a;
            }
            throw new t(e2);
        } catch (IOException e3) {
            throw new l(e3);
        } catch (NumberFormatException e4) {
            throw new t(e4);
        }
    }

    public static void a(k kVar, com.google.gson.c.c cVar) throws IOException {
        com.google.gson.internal.bind.i.X.a(cVar, kVar);
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }

    private static final class a extends Writer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Appendable f6327a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final C0092a f6328b = new C0092a();

        a(Appendable appendable) {
            this.f6327a = appendable;
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            this.f6328b.f6329a = cArr;
            this.f6327a.append(this.f6328b, i, i + i2);
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            this.f6327a.append((char) i);
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        /* JADX INFO: renamed from: com.google.gson.internal.i$a$a, reason: collision with other inner class name */
        static class C0092a implements CharSequence {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            char[] f6329a;

            C0092a() {
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f6329a.length;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.f6329a[i];
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.f6329a, i, i2 - i);
            }
        }
    }
}
