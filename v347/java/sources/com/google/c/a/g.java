package com.google.c.a;

import java.io.Serializable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c f6072a = c.a(',');

    public static <T> f<T> a() {
        return b.IS_NULL.a();
    }

    public static <T> f<T> a(T t) {
        return t == null ? a() : new a(t);
    }

    enum b implements f<Object> {
        ALWAYS_TRUE { // from class: com.google.c.a.g.b.1
            @Override // com.google.c.a.f
            public boolean a(Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysTrue()";
            }
        },
        ALWAYS_FALSE { // from class: com.google.c.a.g.b.2
            @Override // com.google.c.a.f
            public boolean a(Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysFalse()";
            }
        },
        IS_NULL { // from class: com.google.c.a.g.b.3
            @Override // com.google.c.a.f
            public boolean a(Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.isNull()";
            }
        },
        NOT_NULL { // from class: com.google.c.a.g.b.4
            @Override // com.google.c.a.f
            public boolean a(Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.notNull()";
            }
        };

        <T> f<T> a() {
            return this;
        }
    }

    private static class a<T> implements f<T>, Serializable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final T f6073a;

        private a(T t) {
            this.f6073a = t;
        }

        @Override // com.google.c.a.f
        public boolean a(T t) {
            return this.f6073a.equals(t);
        }

        public int hashCode() {
            return this.f6073a.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return this.f6073a.equals(((a) obj).f6073a);
            }
            return false;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.f6073a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 20).append("Predicates.equalTo(").append(strValueOf).append(")").toString();
        }
    }
}
