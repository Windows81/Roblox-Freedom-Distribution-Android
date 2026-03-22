package com.google.firebase.iid;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class Registrar implements com.google.firebase.components.e {

    /* JADX INFO: Access modifiers changed from: private */
    static class a implements com.google.firebase.iid.a.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final FirebaseInstanceId f5188a;

        public a(FirebaseInstanceId firebaseInstanceId) {
            this.f5188a = firebaseInstanceId;
        }
    }

    @Override // com.google.firebase.components.e
    public final List<com.google.firebase.components.a<?>> getComponents() {
        return Arrays.asList(com.google.firebase.components.a.a(FirebaseInstanceId.class).a(com.google.firebase.components.f.a(com.google.firebase.b.class)).a(com.google.firebase.components.f.a(com.google.firebase.a.d.class)).a(q.f5273a).a().b(), com.google.firebase.components.a.a(com.google.firebase.iid.a.a.class).a(com.google.firebase.components.f.a(FirebaseInstanceId.class)).a(r.f5274a).b());
    }
}
