package com.roblox.client.startup;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.b;
import com.roblox.client.ae.k;
import com.roblox.client.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b extends androidx.fragment.app.b {
    private a ag;

    public interface a {
        void y();

        void z();
    }

    public static b d(int i) {
        b bVar = new b();
        Bundle bundle = new Bundle();
        bundle.putInt("message", i);
        bVar.g(bundle);
        return bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void a(Context context) {
        super.a(context);
        if (context instanceof a) {
            this.ag = (a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
    }

    @Override // androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void f() {
        super.f();
        this.ag = null;
    }

    @Override // androidx.fragment.app.b
    public Dialog a(Bundle bundle) {
        k.b("FragmentRetry", "onCreateDialog:");
        b.a aVarA = new b.a(r()).a(o.j.CommonUI_Features_Label_ConnectionError).b(n().getInt("message")).a(o.j.CommonUI_Controls_Action_Retry, new DialogInterface.OnClickListener() { // from class: com.roblox.client.startup.b.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                k.b("FragmentRetry", "... Dialog::onClick:");
                if (b.this.ag != null) {
                    b.this.ag.y();
                }
            }
        });
        aVarA.a(true);
        return aVarA.b();
    }

    @Override // androidx.fragment.app.b, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        k.b("FragmentRetry", "onCancel:");
        a aVar = this.ag;
        if (aVar != null) {
            aVar.z();
        }
    }

    @Override // androidx.fragment.app.b, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        k.b("FragmentRetry", "onDismiss: Do nothing.");
    }

    public void a(CharSequence charSequence) {
        Dialog dialogC = c();
        if (dialogC instanceof androidx.appcompat.app.b) {
            ((androidx.appcompat.app.b) dialogC).a(charSequence);
        }
    }
}
