package com.google.ads.interactivemedia.v3.a;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class w<T> {
    public abstract T read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException;

    public abstract void write(com.google.ads.interactivemedia.v3.a.d.c cVar, T t) throws IOException;

    public final void toJson(Writer writer, T t) throws IOException {
        write(new com.google.ads.interactivemedia.v3.a.d.c(writer), t);
    }

    public final w<T> nullSafe() {
        return new w<T>() { // from class: com.google.ads.interactivemedia.v3.a.w.1
            @Override // com.google.ads.interactivemedia.v3.a.w
            public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, T t) throws IOException {
                if (t == null) {
                    cVar.f();
                } else {
                    w.this.write(cVar, t);
                }
            }

            @Override // com.google.ads.interactivemedia.v3.a.w
            public T read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
                if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                    return (T) w.this.read(aVar);
                }
                aVar.j();
                return null;
            }
        };
    }

    public final String toJson(T t) {
        StringWriter stringWriter = new StringWriter();
        try {
            toJson(stringWriter, t);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public final l toJsonTree(T t) {
        try {
            com.google.ads.interactivemedia.v3.a.b.a.f fVar = new com.google.ads.interactivemedia.v3.a.b.a.f();
            write(fVar, t);
            return fVar.a();
        } catch (IOException e) {
            throw new m(e);
        }
    }

    public final T fromJson(Reader reader) throws IOException {
        return read(new com.google.ads.interactivemedia.v3.a.d.a(reader));
    }

    public final T fromJson(String str) throws IOException {
        return fromJson(new StringReader(str));
    }

    public final T fromJsonTree(l lVar) {
        try {
            return read(new com.google.ads.interactivemedia.v3.a.b.a.e(lVar));
        } catch (IOException e) {
            throw new m(e);
        }
    }
}
