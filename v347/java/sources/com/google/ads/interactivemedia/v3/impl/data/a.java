package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.impl.data.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@com.google.b.a(a = d.class)
public abstract class a {

    public interface b {
        b appState(String str);

        a build();

        b eventId(String str);

        b nativeTime(long j);

        b nativeViewBounds(AbstractC0060a abstractC0060a);

        b nativeViewHidden(boolean z);

        b nativeViewVisibleBounds(AbstractC0060a abstractC0060a);

        b nativeVolume(double d2);

        b queryId(String str);

        b vastEvent(String str);
    }

    public abstract String appState();

    public abstract String eventId();

    public abstract long nativeTime();

    public abstract AbstractC0060a nativeViewBounds();

    public abstract boolean nativeViewHidden();

    public abstract AbstractC0060a nativeViewVisibleBounds();

    public abstract double nativeVolume();

    public abstract String queryId();

    public abstract String vastEvent();

    /* JADX INFO: renamed from: com.google.ads.interactivemedia.v3.impl.data.a$a, reason: collision with other inner class name */
    @com.google.b.a(a = e.class)
    public static abstract class AbstractC0060a {
        public abstract int height();

        public abstract int left();

        public abstract int top();

        public abstract int width();

        public static AbstractC0060a create(int i, int i2, int i3, int i4) {
            return new e(i, i2, i3, i4);
        }
    }

    public static b builder() {
        return new d.a();
    }
}
