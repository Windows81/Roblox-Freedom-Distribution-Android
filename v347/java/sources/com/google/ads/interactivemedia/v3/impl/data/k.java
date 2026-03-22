package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.api.UiElement;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class k implements UiElement {
    public static final w<k> GSON_TYPE_ADAPTER = new w<k>() { // from class: com.google.ads.interactivemedia.v3.impl.data.k.1
        @Override // com.google.ads.interactivemedia.v3.a.w
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, k kVar) throws IOException {
            if (kVar == null) {
                cVar.f();
            } else {
                cVar.b(kVar.getName());
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.ads.interactivemedia.v3.a.w
        public k read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                return new k(aVar.h());
            }
            aVar.j();
            return null;
        }
    };
    private final String name;

    public k(String str) {
        this.name = str;
    }

    @Override // com.google.ads.interactivemedia.v3.api.UiElement
    public String getName() {
        return this.name;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof k)) {
            return false;
        }
        return this.name.equals(((k) obj).name);
    }

    public int hashCode() {
        return com.google.c.a.d.a(this.name);
    }

    public String toString() {
        String str = this.name;
        return new StringBuilder(String.valueOf(str).length() + 20).append("UiElementImpl[name=").append(str).append("]").toString();
    }
}
