package com.roblox.client.chat.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b extends g<m> {
    public b() {
    }

    public b(Object obj) {
        super(obj);
    }

    @Override // com.roblox.client.chat.a.g
    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public boolean b(m mVar, m mVar2) {
        return (mVar == null || mVar2 == null || mVar.a() != mVar2.a()) ? false : true;
    }

    @Override // com.roblox.client.chat.a.g
    /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void a(m mVar, m mVar2) {
        if (mVar != null) {
            mVar.a(mVar2);
        }
    }
}
