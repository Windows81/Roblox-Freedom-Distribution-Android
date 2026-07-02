package com.google.ads.interactivemedia.v3.a.b;

import com.google.ads.interactivemedia.v3.a.b.a.m;
import com.google.ads.interactivemedia.v3.a.l;
import com.google.ads.interactivemedia.v3.a.n;
import com.google.ads.interactivemedia.v3.a.p;
import com.google.ads.interactivemedia.v3.a.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    public static l a(com.google.ads.interactivemedia.v3.a.d.a aVar) throws p {
        boolean z = true;
        try {
            aVar.f();
            z = false;
            return m.P.read(aVar);
        } catch (com.google.ads.interactivemedia.v3.a.d.d e) {
            throw new t(e);
        } catch (EOFException e2) {
            if (z) {
                return n.f2759a;
            }
            throw new t(e2);
        } catch (IOException e3) {
            throw new com.google.ads.interactivemedia.v3.a.m(e3);
        } catch (NumberFormatException e4) {
            throw new t(e4);
        }
    }

    public static void a(l lVar, com.google.ads.interactivemedia.v3.a.d.c cVar) throws IOException {
        m.P.write(cVar, lVar);
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }

    private static final class a extends Writer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Appendable f2716a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final C0057a f2717b;

        private a(Appendable appendable) {
            this.f2717b = new C0057a();
            this.f2716a = appendable;
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            this.f2717b.f2718a = cArr;
            this.f2716a.append(this.f2717b, i, i + i2);
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            this.f2716a.append((char) i);
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        /* JADX INFO: renamed from: com.google.ads.interactivemedia.v3.a.b.j$a$a, reason: collision with other inner class name */
        static class C0057a implements CharSequence {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            char[] f2718a;

            C0057a() {
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f2718a.length;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.f2718a[i];
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.f2718a, i, i2 - i);
            }
        }
    }
}
