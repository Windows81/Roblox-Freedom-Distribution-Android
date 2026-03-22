package com.b.a.a;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum s {
    ALL,
    ANY;

    public boolean a(String[] strArr, Set<String> set) {
        if (this == ANY) {
            for (String str : strArr) {
                if (set.contains(str)) {
                    return true;
                }
            }
            return false;
        }
        for (String str2 : strArr) {
            if (!set.contains(str2)) {
                return false;
            }
        }
        return true;
    }

    public boolean a(Collection<String> collection, Set<String> set) {
        if (this == ANY) {
            Iterator<String> it = collection.iterator();
            while (it.hasNext()) {
                if (set.contains(it.next())) {
                    return true;
                }
            }
            return false;
        }
        Iterator<String> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!set.contains(it2.next())) {
                return false;
            }
        }
        return true;
    }
}
