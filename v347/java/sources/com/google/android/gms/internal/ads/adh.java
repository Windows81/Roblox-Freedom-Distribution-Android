package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class adh<FieldDescriptorType> extends adg<FieldDescriptorType, Object> {
    adh(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.ads.adg
    public final void a() {
        if (!b()) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= c()) {
                    break;
                }
                Map.Entry<FieldDescriptorType, Object> entryB = b(i2);
                if (((aax) entryB.getKey()).d()) {
                    entryB.setValue(Collections.unmodifiableList((List) entryB.getValue()));
                }
                i = i2 + 1;
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : d()) {
                if (((aax) entry.getKey()).d()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.a();
    }
}
