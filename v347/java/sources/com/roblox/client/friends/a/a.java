package com.roblox.client.friends.a;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.roblox.client.R;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.i;
import com.roblox.client.util.a.b;
import com.roblox.client.util.a.e;

/* JADX INFO: loaded from: classes.dex */
public class a extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private InterfaceC0103a f6965a;

    /* JADX INFO: renamed from: com.roblox.client.friends.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0103a {
        void k();
    }

    public static a a() {
        return new a();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_contacts_presentation, viewGroup, false);
        RbxTextView rbxTextView = (RbxTextView) viewInflate.findViewById(R.id.contacts_fine_print_tv);
        String string = getString(R.string.Features_FriendFinder_Label_PermissionsFinePrintLink);
        String string2 = getString(R.string.Features_FriendFinder_Response_ContactPermissionNeeded, string);
        int iIndexOf = string2.indexOf(string);
        b.a(rbxTextView, string2, new e(com.roblox.client.b.bD(), getActivity(), string, iIndexOf, string.length() + iIndexOf));
        viewInflate.findViewById(R.id.contacts_needed_continue_button).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.friends.a.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.f6965a.k();
            }
        });
        return viewInflate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof InterfaceC0103a) {
            this.f6965a = (InterfaceC0103a) context;
            return;
        }
        throw new RuntimeException(context.toString() + " must implement OnFragmentInteractionListener");
    }

    @Override // android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        i.b("contactsPermission");
    }

    @Override // android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f6965a = null;
    }
}
