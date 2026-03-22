package com.roblox.abtesting;

import com.roblox.abtesting.a;
import com.roblox.abtesting.models.ABTest;
import com.roblox.client.ae.v;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends a {
    @Override // com.roblox.abtesting.a
    boolean a(String str) {
        return false;
    }

    @Override // com.roblox.abtesting.a
    boolean a(String str, int i) {
        return false;
    }

    public b(v.a aVar) {
        super(aVar);
    }

    @Override // com.roblox.abtesting.a
    public void a(Set<String> set, ABTest.SubjectTypes subjectTypes, a.InterfaceC0117a interfaceC0117a) {
        if (interfaceC0117a != null) {
            interfaceC0117a.a();
        }
    }

    @Override // com.roblox.abtesting.a
    public void b(Set<String> set, ABTest.SubjectTypes subjectTypes, a.InterfaceC0117a interfaceC0117a) {
        if (interfaceC0117a != null) {
            interfaceC0117a.a();
        }
    }
}
