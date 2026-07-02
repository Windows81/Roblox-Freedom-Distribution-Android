package com.roblox.client.startup;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.g;
import android.support.v7.app.b;
import com.roblox.client.R;

/* JADX INFO: loaded from: classes.dex */
public class a extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private InterfaceC0130a f7879a;

    /* JADX INFO: renamed from: com.roblox.client.startup.a$a, reason: collision with other inner class name */
    public interface InterfaceC0130a {
        void w();

        void x();
    }

    public static a a(int i) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putInt("message", i);
        aVar.setArguments(bundle);
        return aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof InterfaceC0130a) {
            this.f7879a = (InterfaceC0130a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener.");
    }

    @Override // android.support.v4.app.g, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f7879a = null;
    }

    @Override // android.support.v4.app.g
    public Dialog onCreateDialog(Bundle bundle) {
        com.roblox.client.util.g.b("FragmentRetry", "onCreateDialog:");
        b.a aVarA = new b.a(getActivity()).a(R.string.Application_ConnectionError_Dialog_Title).b(getArguments().getInt("message")).a(R.string.CommonUI_Controls_Action_Retry, new DialogInterface.OnClickListener() { // from class: com.roblox.client.startup.a.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                com.roblox.client.util.g.b("FragmentRetry", "... Dialog::onClick:");
                if (a.this.f7879a != null) {
                    a.this.f7879a.w();
                }
            }
        });
        aVarA.a(true);
        return aVarA.b();
    }

    @Override // android.support.v4.app.g, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        com.roblox.client.util.g.b("FragmentRetry", "onCancel:");
        if (this.f7879a != null) {
            this.f7879a.x();
        }
    }

    @Override // android.support.v4.app.g, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        com.roblox.client.util.g.b("FragmentRetry", "onDismiss: Do nothing.");
    }

    public void a(CharSequence charSequence) {
        Dialog dialog = getDialog();
        if (dialog instanceof android.support.v7.app.b) {
            ((android.support.v7.app.b) dialog).a(charSequence);
        }
    }
}
