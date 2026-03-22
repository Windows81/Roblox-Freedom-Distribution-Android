package com.google.c.b;

import com.google.c.a.c;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final c.a f6096a = q.f6130a.c("=");

    private enum a implements com.google.c.a.b<Map.Entry<?, ?>, Object> {
        KEY { // from class: com.google.c.b.ag.a.1
            @Override // com.google.c.a.b
            public Object a(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        },
        VALUE { // from class: com.google.c.b.ag.a.2
            @Override // com.google.c.a.b
            public Object a(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        };

        /* synthetic */ a(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    static <V> com.google.c.a.b<Map.Entry<?, V>, V> a() {
        return a.VALUE;
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* JADX INFO: renamed from: com.google.c.b.ag$1, reason: invalid class name */
    final class AnonymousClass1<K, V> extends j<K, Map.Entry<K, V>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.google.c.a.b f6097b;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.c.b.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> a(K k) {
            return ag.a(k, this.f6097b.a(k));
        }
    }

    public static <K, V> Map.Entry<K, V> a(K k, V v) {
        return new w(k, v);
    }

    static boolean a(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    static String a(Map<?, ?> map) {
        StringBuilder sbAppend = q.a(map.size()).append('{');
        f6096a.a(sbAppend, map);
        return sbAppend.append('}').toString();
    }
}
