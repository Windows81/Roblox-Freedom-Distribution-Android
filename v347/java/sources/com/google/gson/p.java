package com.google.gson;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

/* JADX INFO: loaded from: classes.dex */
public final class p {
    public k a(String str) throws t {
        return a(new StringReader(str));
    }

    public k a(Reader reader) throws t, l {
        try {
            com.google.gson.c.a aVar = new com.google.gson.c.a(reader);
            k kVarA = a(aVar);
            if (!kVarA.k() && aVar.f() != com.google.gson.c.b.END_DOCUMENT) {
                throw new t("Did not consume the entire document.");
            }
            return kVarA;
        } catch (com.google.gson.c.d e) {
            throw new t(e);
        } catch (IOException e2) {
            throw new l(e2);
        } catch (NumberFormatException e3) {
            throw new t(e3);
        }
    }

    public k a(com.google.gson.c.a aVar) throws t, l {
        boolean zQ = aVar.q();
        aVar.a(true);
        try {
            try {
                try {
                    return com.google.gson.internal.i.a(aVar);
                } catch (OutOfMemoryError e) {
                    throw new o("Failed parsing JSON source: " + aVar + " to Json", e);
                }
            } catch (StackOverflowError e2) {
                throw new o("Failed parsing JSON source: " + aVar + " to Json", e2);
            }
        } finally {
            aVar.a(zQ);
        }
    }
}
