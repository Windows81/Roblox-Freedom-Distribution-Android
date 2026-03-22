package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.impl.data.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class e extends a.AbstractC0060a {
    private final int height;
    private final int left;
    private final int top;
    private final int width;

    e(int i, int i2, int i3, int i4) {
        this.left = i;
        this.top = i2;
        this.height = i3;
        this.width = i4;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.a.AbstractC0060a
    public int left() {
        return this.left;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.a.AbstractC0060a
    public int top() {
        return this.top;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.a.AbstractC0060a
    public int height() {
        return this.height;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.a.AbstractC0060a
    public int width() {
        return this.width;
    }

    public String toString() {
        int i = this.left;
        int i2 = this.top;
        int i3 = this.height;
        return new StringBuilder(86).append("BoundingRect{left=").append(i).append(", top=").append(i2).append(", height=").append(i3).append(", width=").append(this.width).append("}").toString();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a.AbstractC0060a)) {
            return false;
        }
        a.AbstractC0060a abstractC0060a = (a.AbstractC0060a) obj;
        return this.left == abstractC0060a.left() && this.top == abstractC0060a.top() && this.height == abstractC0060a.height() && this.width == abstractC0060a.width();
    }

    public int hashCode() {
        return ((((((this.left ^ 1000003) * 1000003) ^ this.top) * 1000003) ^ this.height) * 1000003) ^ this.width;
    }
}
