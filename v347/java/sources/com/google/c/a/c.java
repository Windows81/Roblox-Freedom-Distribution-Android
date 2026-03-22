package com.google.c.a;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6067a;

    public static c a(String str) {
        return new c(str);
    }

    public static c a(char c2) {
        return new c(String.valueOf(c2));
    }

    private c(String str) {
        this.f6067a = (String) e.a(str);
    }

    private c(c cVar) {
        this.f6067a = cVar.f6067a;
    }

    public c b(final String str) {
        e.a(str);
        return new c(this) { // from class: com.google.c.a.c.1
            @Override // com.google.c.a.c
            CharSequence a(Object obj) {
                return obj == null ? str : c.this.a(obj);
            }

            @Override // com.google.c.a.c
            public c b(String str2) {
                throw new UnsupportedOperationException("already specified useForNull");
            }
        };
    }

    public a c(String str) {
        return new a(str);
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f6070a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f6071b;

        private a(c cVar, String str) {
            this.f6070a = cVar;
            this.f6071b = (String) e.a(str);
        }

        public StringBuilder a(StringBuilder sb, Map<?, ?> map) {
            return a(sb, map.entrySet());
        }

        public <A extends Appendable> A a(A a2, Iterator<? extends Map.Entry<?, ?>> it) throws IOException {
            e.a(a2);
            if (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                a2.append(this.f6070a.a(next.getKey()));
                a2.append(this.f6071b);
                a2.append(this.f6070a.a(next.getValue()));
                while (it.hasNext()) {
                    a2.append(this.f6070a.f6067a);
                    Map.Entry<?, ?> next2 = it.next();
                    a2.append(this.f6070a.a(next2.getKey()));
                    a2.append(this.f6071b);
                    a2.append(this.f6070a.a(next2.getValue()));
                }
            }
            return a2;
        }

        public StringBuilder a(StringBuilder sb, Iterable<? extends Map.Entry<?, ?>> iterable) {
            return a(sb, iterable.iterator());
        }

        public StringBuilder a(StringBuilder sb, Iterator<? extends Map.Entry<?, ?>> it) {
            try {
                a(sb, it);
                return sb;
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }
    }

    CharSequence a(Object obj) {
        e.a(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }
}
